# Data Engineering Journey

> **Azure Data Engineer · Snowflake · Databricks**

This repository documents my transition from **20+ years of media production and operations** into data engineering.

I am building on an existing foundation in **process design, workflow management, automation, data handling, SQL, reporting and quality control** and progressively moving toward production-oriented data engineering.

**Career path:**  
`Operations & Workflows → Automation → SQL & Data → Python → ETL/ELT → Azure → Databricks → Snowflake`

---

## 🎯 Current Focus

I am following a structured learning path focused on the technologies and skills most relevant to my target Data Engineering roles.

| Area | Current Focus |
|---|---|
| **SQL** | Querying, joins, CTEs, windows, data transformation |
| **Python** | Fundamentals → data engineering use cases |
| **Azure** | Storage, ADLS Gen2, Azure Data Factory |
| **ADF** | Pipelines, datasets, linked services, IR, Copy Activity, monitoring |
| **Databricks** | Apache Spark, PySpark, Delta Lake, Medallion Architecture |
| **Snowflake** | Architecture, SQL, loading, transformations, ELT |
| **Data Modelling** | Facts, dimensions, grain, SCD |
| **Git/GitHub** | Version control and project documentation |
| **BI** | Power BI and Tableau for analytics and visualization |

---

## ☁️ Azure Data Engineering — Hands-on Progress

My current Azure practice is focused on understanding how data moves through cloud-based pipelines.

### Azure Storage & ADLS Gen2

Hands-on work includes:

- Azure Blob Storage
- Azure Data Lake Storage Gen2
- Storage-to-storage data movement
- File-based ingestion concepts
- Source and sink configuration
- Understanding regions and pipeline execution

### Azure Data Factory

Hands-on practice includes:

- Pipelines
- Copy Activity
- Linked Services
- Datasets
- Integration Runtime
- Source and sink configuration
- Monitoring pipeline/activity runs
- Copy performance and throughput
- SQL Server → ADLS Gen2 ingestion
- Blob Storage → ADLS Gen2 ingestion
- ADLS Gen2 → ADLS Gen2 movement

Example pipeline flow:

```text
SQL Server
    │
    ▼
Azure Data Factory
    │
    ▼
ADLS Gen2
```

Storage movement practice:

```text
Azure Blob Storage
        │
        ▼
Azure Data Factory
        │
        ▼
ADLS Gen2
```

> The goal is not only to make pipelines run, but to understand **how they work, how to monitor them, and how to explain them in an interview.**

---
## 🧮 SQL

SQL is a core part of my Data Engineering foundation. I’ve built my SQL and MySQL
foundation through structured learning and hands-on practice, with a focus on
querying, data analysis, transformation, and SQL concepts relevant to ETL/ELT
and data engineering workflows.

<p align="center">

<a href="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/The%20Complete%20SQL%20Bootcamp%20-%20Go%20from%20Zero%20to%20Hero.jpg">
<img src="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/The%20Complete%20SQL%20Bootcamp%20-%20Go%20from%20Zero%20to%20Hero.jpg"
alt="The Complete SQL Bootcamp"
width="32%">
</a>

<a href="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/Jhulan%20Dey%20-%20MySQL%20for%20Data%20Analytics%20Certificate.png">
<img src="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/Jhulan%20Dey%20-%20MySQL%20for%20Data%20Analytics%20Certificate.png"
alt="MySQL for Data Analytics"
width="32%">
</a>

<a href="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/7aglkilx_1729699648268_page-0001.jpg">
<img src="https://raw.githubusercontent.com/JhulanD/JhulanD/854ddafe8fd04a578710c58b74a118e5bd9299ae/public/7aglkilx_1729699648268_page-0001.jpg"
alt="MySQL Data Analysis - Maven Analytics"
width="32%">
</a>

</p>

---

## 🐍 Python Progress

Python is being developed as my primary programming language for data engineering.

Current learning includes:

- Variables and data types
- Lists
- Tuples
- Sets
- Dictionaries
- Basic programming logic
- Data manipulation fundamentals

Next focus:

`Functions → File Handling → Exceptions → Modules → Pandas → Python for ETL`

---

## 📊 Analytics & Visualization

I also maintain an analytics foundation that supports the data engineering journey.

### Completed / Existing Learning

- SQL
- MySQL
- Excel for Data Analytics
- Power BI
- Tableau

### Recent Milestone

🏆 **Tableau for Data Visualization — Certificate of Achievement**  
Completed: **29 August 2026**

The objective is to understand the complete path from data preparation to analysis and visualization rather than treating BI as a separate skill.

<img src="https://github.com/JhulanD/JhulanD/blob/b503336d4af81419d18254f9fb20b53e3b324946/public/Jhulan%20Dey%20-%20Tableau%20for%20Data%20Visualization%20Certificate.png?raw=true" width="30%" alt="Tableau Certificate">
<a href="https://www.analystbuilder.com/achievements/verify/QGRKYU2PBQ?r=h4COkDkQYtWgLCUJ1vs3xBcf3" target="_blank" rel="noopener noreferrer">Tableau for Data Visualization
</a>


---

## ⚙️ Automation Background

Before moving into data engineering, I worked extensively with production workflows, process coordination and automation.

I have also built workflow automations using:

- Make.com
- n8n
- APIs
- Spreadsheet-based data flows
- Operational reporting workflows

This experience gives me a practical understanding of:

- Data movement
- Process automation
- Workflow dependencies
- Quality checks
- Structured hand-offs
- Operational reliability

---

## 🏗️ Target Data Engineering Architecture

My learning and future project work are being aligned around this architecture:

```text
              DATA SOURCES
                   │
        ┌──────────┴──────────┐
        │                     │
    SQL Server             Files/APIs
        │                     │
        └──────────┬──────────┘
                   ▼
             Azure ADLS Gen2
                   │
                   ▼
          Azure Data Factory
                   │
                   ▼
            Databricks / Spark
                   │
          ┌────────┴────────┐
          ▼                 ▼
       Bronze             Silver
          │                 │
          └────────┬────────┘
                   ▼
                 Gold
                   │
                   ▼
               Snowflake
                   │
                   ▼
              dbt / BI
```

The target architecture will evolve as I gain hands-on experience.

---

## 📚 Learning Roadmap

### Phase 1 — Foundations
- SQL
- MySQL
- Data analysis
- Python fundamentals
- Git/GitHub

### Phase 2 — Azure Data Engineering
- Azure fundamentals
- Blob Storage
- ADLS Gen2
- Azure Data Factory
- Linked Services
- Datasets
- Integration Runtime
- Pipelines & activities
- Incremental ingestion
- Monitoring & error handling

### Phase 3 — Apache Spark & PySpark
- Spark architecture
- DataFrames
- Spark SQL
- Transformations & actions
- Joins
- Window functions
- Schema handling
- Partitioning
- Performance
- PySpark ETL

### Phase 4 — Databricks & Delta Lake
- Azure Databricks
- Notebooks
- Compute
- Delta tables
- MERGE
- Schema evolution
- Time Travel
- Medallion Architecture
- Bronze / Silver / Gold
- Workflows
- Production-oriented ETL

### Phase 5 — Snowflake
- Snowflake architecture
- Warehouses
- Databases & schemas
- Stages & file formats
- COPY INTO
- Semi-structured data
- VARIANT / FLATTEN
- MERGE
- Streams & Tasks
- Time Travel
- RBAC
- Performance & cost optimization

### Phase 6 — Data Modelling & dbt
- Fact & dimension tables
- Star schema
- Grain
- Surrogate keys
- SCD Type 1
- SCD Type 2
- Incremental models
- dbt sources
- Staging / intermediate / marts
- Tests
- Snapshots
- Documentation & lineage

---

## 🚧 Main Project

I am building **one end-to-end Data Engineering project** rather than multiple small projects.

Target capabilities:

- Cloud data ingestion
- Multiple-file processing
- SQL Server ingestion
- Incremental loading
- Azure Data Factory
- ADLS Gen2
- PySpark
- Databricks
- Delta Lake
- Bronze / Silver / Gold
- Data quality
- Dimensional modelling
- SCD Type 2
- Snowflake
- dbt
- Git
- Monitoring
- Performance and cost awareness

Project implementation will be added progressively as each technology is learned and validated hands-on.

---

## 📂 Repository Structure

```text
data-engineering/
│
├── README.md
│
├── python/
│   ├── fundamentals/
│   ├── data-processing/
│   └── etl/
│
├── sql/
│   ├── fundamentals/
│   ├── advanced-sql/
│   └── interview/
│
├── azure/
│   ├── adls/
│   └── adf/
│
├── spark-pyspark/
│   ├── spark/
│   ├── pyspark/
│   └── exercises/
│
├── databricks/
│   ├── notebooks/
│   ├── delta/
│   └── workflows/
│
├── snowflake/
│   ├── sql/
│   ├── loading/
│   └── transformations/
│
├── data-modeling/
│   ├── dimensional-modeling/
│   └── scd/
│
├── dbt/
│   ├── models/
│   ├── tests/
│   └── snapshots/
│
└── projects/
    └── end-to-end-data-engineering/
```

---

## 🧠 How I Learn

I am following a simple engineering-focused cycle:

```text
LEARN
  ↓
PRACTICE
  ↓
BUILD
  ↓
DEBUG
  ↓
EXPLAIN
  ↓
INTERVIEW
  ↓
DOCUMENT
  ↓
SHOWCASE
```

The emphasis is on **hands-on implementation and interview-ready understanding**, not collecting tutorials.

---

## 📈 Progress Tracker

- [x] SQL foundation
- [x] MySQL foundation
- [x] Excel analytics
- [x] Power BI foundation
- [x] Tableau course + certificate
- [x] Python fundamentals — in progress
- [x] Azure Storage / ADLS Gen2 hands-on
- [x] Azure Data Factory Copy Activity hands-on
- [x] SQL Server → ADLS Gen2 pipeline
- [x] Blob Storage → ADLS Gen2 pipeline
- [x] ADLS Gen2 → ADLS Gen2 pipeline
- [ ] Advanced ADF
- [ ] Apache Spark
- [ ] PySpark
- [ ] Azure Databricks
- [ ] Delta Lake
- [ ] Medallion Architecture
- [ ] Snowflake
- [ ] Data Modelling
- [ ] SCD Type 2
- [ ] dbt
- [ ] End-to-end Data Engineering project
- [ ] Production-style monitoring & optimization

> Status reflects my learning journey and is updated as I complete and validate each stage.

---

## 🔗 Connect

**LinkedIn:** [linkedin.com/in/jhulandey](https://www.linkedin.com/in/jhulandey/)  
**Portfolio:** [jd-portfolio-demo.netlify.app](https://jd-portfolio-demo.netlify.app/)  
**Email:** [jhulandey.now@outlook.in](mailto:jhulandey.now@outlook.in)

---

## About Me

I am a career changer moving from **media production operations and workflow leadership into Data Engineering**.

My approach is simple:

> **Use the systems thinking I already have, add the engineering skills I need, build real pipelines, document the work, and become interview-ready.**

**Learn → Build → Debug → Explain → Document → Showcase → Apply**
