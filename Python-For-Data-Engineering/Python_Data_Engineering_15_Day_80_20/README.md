# Python for Data Engineering — 15-Day 80/20 Journey

A practical, beginner-to-job-ready Python learning series focused specifically on
**Data Engineering**, using **Google Colab** as the primary environment.

The goal is not to learn every part of Python.

The goal is to learn the small set of Python skills that Data Engineers use repeatedly
to **move, clean, transform, extract, load, validate, and automate data**.

---

## 🎯 Mission

> **Python fundamentals → data manipulation → APIs → databases → ETL → production-style pipeline**

This is an **80/20 learning path**.

We deliberately avoid:
- Rare Python syntax
- Academic computer-science theory
- Unnecessary language features
- Frameworks before the fundamentals are solid
- Huge code dumps without practice

We focus on skills that directly support real data engineering work.

---

## 🧭 15-Day Roadmap

| Days | Focus | Outcome |
|---|---|---|
| 01–03 | Python Foundations | Move and transform data with core Python |
| 04–07 | Pandas + Files | Work with tabular and file-based data |
| 08–10 | APIs + SQLite | Extract from APIs and load into a database |
| 11–13 | Pipeline Engineering | Build safer, observable ETL workflows |
| 14–15 | Capstone | Build a complete production-style pipeline |

### Phase 1 — Zero to Data-Ready
- Variables
- Strings and numbers
- Lists and dictionaries
- `if` conditions
- `for` loops
- Functions

### Phase 2 — The Core Engine
- Pandas DataFrames
- CSV
- JSON
- Parquet
- Filtering
- Cleaning
- Grouping
- Aggregations

### Phase 3 — Extraction & Loading
- HTTP/API requests
- JSON responses
- Nested data
- Basic transformation
- SQLite
- Loading structured data

### Phase 4 — Bulletproofing Pipelines
- `try/except`
- Validation
- Logging
- ETL structure
- Automation concepts

### Phase 5 — Capstone
Build one end-to-end pipeline that combines the skills learned throughout the series.

---

## 📁 Folder Structure

```text
Python_Data_Engineering_15_Day_80_20/
│
├── README.md
│
├── 01_foundations/
│   ├── Day 1 notebook
│   ├── Day 2 notebook
│   └── Day 3 notebook
│
├── 02_pandas_data/
│   ├── Day 4 notebook
│   ├── Day 5 notebook
│   ├── Day 6 notebook
│   └── Day 7 notebook
│
├── 03_extraction_loading/
│   ├── Day 8 notebook
│   ├── Day 9 notebook
│   └── Day 10 notebook
│
├── 04_pipeline_engineering/
│   ├── Day 11 notebook
│   ├── Day 12 notebook
│   └── Day 13 notebook
│
├── 05_capstone/
│   ├── Day 14 notebook
│   └── Day 15 notebook
│
└── notes/
    ├── cheatsheets
    ├── interview notes
    └── lessons learned
```

---

## 🐍 Current Progress

### Day 1 — Variables, Lists & Basic Data Cleaning

Completed work includes:
- Variables
- User IDs represented as a list
- String `.strip()`
- `for` loops
- `if` conditions
- `append()`
- Cleaning messy user IDs
- List comprehensions

The Day 1 practical exercise simulated a common data-engineering task:

> Receive a dirty list of user IDs, remove leading/trailing whitespace,
> discard empty values, and produce a clean list.

The completed Day 1 notebook is stored in:

```text
01_foundations/DE_Day1_Variables_Lists.ipynb
```

---

## ⚙️ How This Series Works

Each day follows the same loop:

```text
Concept
   ↓
Small Example
   ↓
Hands-on Data Engineering Challenge
   ↓
You write the solution
   ↓
Code review
   ↓
Score / 100
   ↓
"Next day"
```

### Important rule

**Do not skip the hands-on challenge.**

The objective is not to watch Python being written.

The objective is to become capable of writing and debugging Python yourself.

---

## 🧠 Mentor Rules

The learning approach is intentionally strict:

1. Start with the **WHY**.
2. Learn the smallest useful mental model.
3. See a practical example.
4. Write the solution yourself.
5. Review mistakes.
6. Improve the solution.
7. Only then move forward.

I should not receive complete challenge solutions before attempting them.

Progression happens only when I explicitly type:

```text
Next day
```

---

## 🏗️ Data Engineering Context

Python is being learned as a tool inside a larger data ecosystem:

```text
APIs / Files / Databases
          │
          ▼
       Python
          │
          ▼
   Clean / Validate
          │
          ▼
     Transform
          │
          ▼
   Load / Store
          │
          ▼
   Data Warehouse
          │
          ▼
 Analytics / BI / ML
```

The purpose of Python here is therefore practical:

**move data reliably from one place to another while transforming and validating it.**

---

## 🛠️ Primary Environment

### Google Colab

All exercises are designed to work primarily in Google Colab.

Recommended setup:

```text
Google Colab
    +
Python
    +
Pandas
    +
Requests
    +
SQLite
```

Additional tools will be introduced only when they become necessary.

---

## 📌 80/20 Skill Priority

Throughout the series, prioritize these skills:

### Python
- Variables
- Strings
- Lists
- Dictionaries
- Loops
- Conditions
- Functions
- Exceptions
- File handling
- Modules

### Data Work
- Pandas
- CSV
- JSON
- Parquet
- APIs
- SQL
- SQLite

### Engineering Habits
- Validation
- Logging
- Reusable functions
- Clear naming
- Error handling
- Reproducibility
- Idempotent thinking
- Pipeline structure

---

## 🚫 What We Are Intentionally Not Prioritizing

At this stage, do not spend significant time on:

- Metaclasses
- Decorator-heavy programming
- Advanced algorithms
- Complex recursion
- Rare standard-library modules
- GUI development
- Web application frameworks
- Advanced OOP patterns
- Competitive-programming tricks

Those topics may be useful in other careers, but they are not part of this 15-day
Data Engineering sprint.

---

## 🎯 Definition of Success

By the end of Day 15, the target is to be able to:

- Write basic Python independently
- Manipulate lists and dictionaries
- Write reusable functions
- Clean messy data
- Read and write common data formats
- Work with Pandas DataFrames
- Consume an API
- Parse JSON
- Load data into SQLite
- Handle common pipeline failures
- Add useful logging
- Structure a basic ETL workflow
- Explain the architecture of a simple data pipeline
- Build and debug a small end-to-end pipeline

This is **not** the claim that 15 days makes someone a senior Data Engineer.

The 15 days are a focused foundation sprint designed to create the practical Python
skills required for the next stage of Data Engineering learning.

---

## 📈 Progress Tracker

- [x] Day 01 — Variables, Lists & Basic Cleaning
- [ ] Day 02 — Dictionaries, Conditions & Loops
- [ ] Day 03 — Functions for Data Processing
- [ ] Day 04 — Pandas Fundamentals
- [ ] Day 05 — Filtering & Cleaning DataFrames
- [ ] Day 06 — Aggregations & Transformations
- [ ] Day 07 — CSV / JSON / Parquet
- [ ] Day 08 — API Extraction
- [ ] Day 09 — Nested JSON & Transformation
- [ ] Day 10 — SQLite Loading
- [ ] Day 11 — Error Handling
- [ ] Day 12 — Logging & Validation
- [ ] Day 13 — ETL Workflow Structure
- [ ] Day 14 — Capstone Build
- [ ] Day 15 — Capstone Hardening & Review

---

## 🧾 Learning Journal

After each day, record:

```text
Day:
Topic:

What I learned:

What confused me:

What I built:

Mistake I made:

How I fixed it:

Key Data Engineering lesson:

Confidence: __ / 100
```

This turns the repository into a **learning journal**, not just a collection of notebooks.

---

## 🚀 Long-Term Direction

This 15-day sprint is only the Python foundation.

The intended progression afterward is:

```text
Python
   ↓
Python + SQL
   ↓
Pandas / NumPy
   ↓
APIs + Automation
   ↓
ETL / ELT
   ↓
PySpark
   ↓
Airflow / Orchestration
   ↓
Cloud
   ↓
Data Warehouses / Lakehouses
   ↓
Production Data Engineering
```

The long-term goal is **Data Engineering**, not Python for its own sake.

---

## 🔥 Operating Principle

> **Learn less. Build more. Understand why. Write the code yourself.**

One completed pipeline is worth more than memorizing hundreds of Python commands.
