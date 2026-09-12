SELECT * FROM sales;

SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE status = 'completed';

SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE status != 'completed';



SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE (status = 'completed' OR status = 'pending')
  AND amount > 10;



SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE status IN ('completed', 'pending', 'shopped');



SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE status NOT IN ('completed', 'pending', 'shopped');

-- NOT IN has a famous failure mode: if the list contains a NULL, the query returns no rows at all.
SELECT 
	order_id,
	customer_id,
	amount,
	status
FROM
	orders
WHERE status NOT IN ('completed', 'pending', 'shopped', NULL);



-- BETWEEN and the timestamp trap
-- BETWEEN is inclusive on both ends: amount BETWEEN 50 AND 200 means amount >= 50 AND amount <= 200.
SELECT order_id, order_date, amount
FROM orders
WHERE order_date BETWEEN '2025-01-18' AND '2025-01-22';

-- BETWEEN '2025-01-18' AND '2025-01-19' on a timestamp column includes
-- 2025-01-19 00:00:00 and nothing after it.
-- The whole afternoon of the 19th silently disappears from your report.
-- On timestamps, always use an explicit half-open range:
-- >= the start, strict < the day after the end.



-- LIKE: pattern matching
-- Two wildcards: % matches any number of characters, _ matches exactly one.
SELECT name FROM customers WHERE name LIKE 'A%';     -- starts with A
SELECT name FROM customers WHERE name LIKE '%Chen';  -- ends with Chen
SELECT name FROM customers WHERE name LIKE '%ar%';   -- 'ar' anywhere
SELECT name FROM customers WHERE name LIKE '_a%';    -- second letter is a




-- Combining it all
-- Real queries stack these filters:
SELECT
    o.order_id,
    c.name AS customer_name,
    o.order_date,
    o.amount,
    o.status
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE o.status IN ('completed', 'pending')
  AND o.amount > 50
  AND o.order_date BETWEEN '2025-01-16' AND '2025-01-22'
  AND c.city LIKE 'San%'
ORDER BY o.amount DESC;


-- ===========================================
-- ===========================================
-- SQL practice
-- Filter high-value completed orders
-- Apply the lesson in a focused coding workspace. Run your solution, inspect the result, then submit it for grading.

-- Filter high-value completed orders
-- Find completed orders worth more than 100 and show the largest amount first.

-- Requirements
-- Return order_id and amount in that order.
-- Keep only completed orders with amount greater than 100.
-- Sort amount from highest to lowest.

SELECT 
	order_id,
	amount
FROM
	orders
WHERE status = 'completed' AND amount > 100
ORDER BY amount DESC;


-- Sorting by multiple columns
-- The database sorts by the first key, then breaks ties with the second, and so on. Each key can have its own direction:
SELECT 
	order_id,
	amount
FROM
	orders
WHERE status = 'completed' AND amount > 100


-- =========================
-- LIMIT: the top-N pattern
-- Top 3 highest-value orders
SELECT order_id, customer_id, amount
FROM orders
ORDER BY amount DESC
LIMIT 3;

-- Top customers by revenue, most recent orders, most expensive queries:
-- you will write this pattern for the rest of your career.


-- FAILS: WHERE runs before the alias exists
SELECT amount * 1.08 AS total_with_tax
FROM orders
WHERE total_with_tax > 100;

-- WORKS: repeat the expression in WHERE, alias is fine in ORDER BY
SELECT amount * 1.08 AS total_with_tax
FROM orders
WHERE amount * 1.08 > 100
ORDER BY total_with_tax DESC;



-- The patterns you will actually use-

-- Most recent N orders
SELECT * FROM orders
ORDER BY order_date DESC
LIMIT 10;

-- This month's orders, biggest first
SELECT
	order_id,
	amount,
	order_date
FROM
	orders

WHERE order_date >= '2025-01-01' 
  AND order_date < '2025-02-01'
ORDER BY amount DESC, order_id;
	
--===========================
--===========================
-- SQL practice

-- Find the three largest orders
-- Return the three highest-value orders from the sample database.


-- Requirements
-- Return order_id, customer_id, and amount.
-- Sort amount in descending order.
-- Return only three rows.

SELECT order_id, customer_id, amount
FROM orders
ORDER BY amount DESC
LIMIT 3;


-- =======================================
-- =======================================
create TABLE users (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	emnail VARCHAR(50),
	age INTEGER
);


INSERT INTO users(name, email, age) VALUES
	('John Doe', 'johndoe@examples.com', 32),
	('Jane Doe', 'janedoe@examples.com', 26),
	('Bob Smith', 'bobsm@examples.com', 45);



SELECT * FROM users;


ALTER table users RENAME user_email TO email;

ALTER TABLE users ADD column phone VARCHAR(20);

INSERT INTO users(name, email, age, phone) VALUES
	('John Doe', 'johndoe@examples.com', 32, 1212121212),
	('Jane Doe', 'janedoe@examples.com', 26, 1313131313),
	('Bob Smith', 'bobsm@examples.com', 45, 1414141414);



SELECT * FROM users;

DELETE FROM users WHERE phone IS NULL;

ALTER TABLE users ALTER COLUMN age TYPE SMALLINT;

-- ==================================================
-- ==================================================
-- Database Constraints in PostgreSQL

CREATE TABLE employees (
	employee_id INTEGER,
	employee_name VARCHAR(50),
	employee_salary NUMERIC (10, 2)
);

INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (1, NULL, 20000);

SELECT * FROM employees;

UPDATE employees SET employee_name = 'NA' WHERE employee_name IS NULL;

ALTER TABLE employees ALTER COLUMN employee_name SET NOT NULL;
ALTER TABLE employees ALTER COLUMN employee_salary SET NOT NULL;
ALTER TABLE employees ADD CONSTRAINT unique_employee UNIQUE (employee_name);

INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (1, 'S Das', 30000);

INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (1, 'AD', 30000);

SELECT * FROM employees;

-- =======================================
-- =======================================

-- ======== CHECK constraints ============

-- Ensure Salary is Positive: To prevent entering negative salaries or zero values
ALTER TABLE employees
ADD CONSTRAINT chk_positive_salary  CHECK (employee_salary > 0);

INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (1, 'Vinod Agni', 0);

-- Prevent Empty Names: You already have a NOT NULL constraint,
-- but someone could still insert an empty string (''). To prevent this:
ALTER TABLE employees
ADD CONSTRAINT chk_empty_names CHECK (length(employees.employee_name) > 0);


INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (1, '', 50000);

ALTER TABLE employees ADD PRIMARY KEY (employee_id);


SELECT * FROM employees;

----------------------------------------------------------------
-- =============================================================
-- =============Primary Keys and Foreign Keys ==================

CREATE TABLE students (
  id int PRIMARY KEY,
  name varchar(50),
  age int,
  gender varchar(10)
);

INSERT INTO students (id, "name", age, gender)
VALUES (1, 'Pankaj', 20, 'Male');

SELECT * FROM students;

INSERT INTO students (id, "name", age, gender)
VALUES (2, 'Pankaj', 20, 'Male');


-- =================================
-- ## Foreign Keys

-- A foreign key is a column or set of columns that refers to the primary key of another table.

CREATE TABLE courses (
id int PRIMARY KEY,
name VARCHAR(50),
duration int
);

INSERT INTO courses (id, "name", duration)
VALUES (1, 'Math', 18);

SELECT * FROM courses;

DROP TABLE students;

CREATE TABLE students (
	id int PRIMARY KEY,
	name VARCHAR(50),
	age int,
	gender VARCHAR(10),
	course_id int,
FOREIGN KEY (course_id) REFERENCES courses(id)
);


INSERT INTO students (id, "name", age, gender, course_id)
VALUES (2, 'Vinita', 25, 'Female', 2);


SELECT * FROM students;

-- =================================
-- =================================
-- ======== INSERT, UPDATE, and DELETE queries =============

SELECT * FROM employees;


INSERT INTO employees (employee_id, employee_name, employee_salary)
VALUES (21, 'Sujoy Das', 50000)

UPDATE employees
SET employee_id = 2
WHERE employee_name = 'S Das';

UPDATE employees
SET employee_id = 4
WHERE employee_name = 'Sujoy Das';

ALTER TABLE employees
ALTER COLUMN employee_id SET NOT NULL;

ALTER table employees
ADD PRIMARY KEY (employee_id);

ALTER TABLE employees
ADD COLUMN age INTEGER;

UPDATE employees
SET age = CASE employee_id
    WHEN 1 THEN 20
    WHEN 2 THEN 25
    WHEN 3 THEN 30
    WHEN 4 THEN 35
END
WHERE employee_id IN (1, 2, 3, 4);

ALTER TABLE employees
ALTER COLUMN age SET NOT NULL;


SELECT * FROM employees;

-- =====================
-- Write an INSERT query to add a new employee
	-- 'Jane Smith' with age 25 and salary 45000 to the 'employees' table.

INSERT INTO employees (employee_id, employee_name, employee_salary, age)
VALUES (5,'Jane Smith', 45000, 25 );

-- Write an UPDATE query to change the name of the employee with id 1 to 'John Smith'.
UPDATE employees
SET employee_name = 'John Smith'
WHERE employee_id = 1;


-- Write a DELETE query to remove all employees
-- with a salary less than 40000 from the 'employees' table.

DELETE FROM employees
WHERE employees.employee_salary < 40000;

SELECT * FROM employees;
