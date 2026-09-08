CREATE TABLE de_practice.customer_surveys_clean AS 

SELECT * FROM public.customer_surveys;


SELECT * FROM de_practice.customer_surveys_clean;

-- 106 rows
SELECT count(*) FROM de_practice.customer_surveys_clean;


SELECT COUNT(DISTINCT("customer_id")) AS customer_count
FROM de_practice.customer_surveys_clean;