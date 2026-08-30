<div align="center">


<img src="https://raw.githubusercontent.com/JhulanD/JhulanD/main/public/ChatGPT Image Aug 30, 2026, 01_11_05 PM.png" width="100%" alt="Jhulan Dey — Data Engineering Journey"/>

<br/>

# ⚡ Data Engineering Journey

### Transitioning 20+ years of Operations Leadership into Modern Cloud Data Platforms

<br/>

![Azure](https://img.shields.io/badge/Azure-Data%20Engineering-0078D4?style=flat-square&logo=microsoftazure&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks-Learning-FF3621?style=flat-square&logo=databricks&logoColor=white)
![Snowflake](https://img.shields.io/badge/Snowflake-Target-29B5E8?style=flat-square&logo=snowflake&logoColor=white)
![Python](https://img.shields.io/badge/Python-Learning-3776AB?style=flat-square&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Foundation-4479A1?style=flat-square&logo=mysql&logoColor=white)

<br/><br/>

<a href="https://www.linkedin.com/in/jhulandey">LinkedIn</a> •
<a href="https://jd-portfolio-demo.netlify.app">Portfolio</a> •
<a href="mailto:jhulandey.now@outlook.in">Email</a>

</div>

---

## 📌 Executive Summary

> **Using existing systems-thinking to build reliable cloud data pipelines, document engineering decisions, and develop production-oriented ETL/ELT workflows.**

I am transitioning from **20+ years of media production and operations leadership** into **Data Engineering**.

My foundation in **process design, workflow automation, operational quality, documentation, reporting, and cross-functional execution** provides the foundation for how I approach modern data engineering.

My career transition follows a deliberate path:

```text
Operations & Workflows → Automation → SQL & Data → ETL / ELT
→ Azure Data Engineering → Spark / Databricks → Snowflake
```

The goal is not simply to collect technologies.

The goal is to **build → debug → explain → document → showcase**.

---

# 🎯 Tech Stack

| Layer | Technologies & Concepts | Status |
|---|---|---|
| **Cloud** | Microsoft Azure | 🟡 In Progress |
| **Storage** | Azure Blob Storage, ADLS Gen2 | 🟡 In Progress |
| **Orchestration** | Azure Data Factory | 🟡 In Progress |
| **Processing** | Python, Apache Spark, PySpark | 🟡 In Progress |
| **Data Platform** | Azure Databricks, Delta Lake | 🟡 In Progress |
| **Data Warehouse** | Snowflake | ⚪ Planned |
| **Transformation** | dbt | ⚪ Planned |
| **Database / SQL** | SQL, MySQL, SQL Server | 🟢 Foundation |
| **Data Modelling** | Star Schema, Snowflake Schema, SCD1/SCD2 | 🟡 Learning |
| **Analytics** | Power BI, Tableau | 🟢 Active / Certified |
| **Automation** | Make.com, n8n, REST APIs | 🟢 Existing Experience |
| **Version Control** | Git / GitHub | 🟡 In Progress |

---

# 🏗️ Target Data Engineering Architecture

```text
                         ┌───────────────────────┐
                         │      DATA SOURCES     │
                         │ SQL Server / APIs     │
                         │ CSV / JSON / Files    │
                         └───────────┬───────────┘
                                     │
                                     ▼
                         ┌───────────────────────┐
                         │      ADLS Gen2        │
                         │      RAW STORAGE      │
                         └───────────┬───────────┘
                                     │
                                     ▼
                         ┌───────────────────────┐
                         │   AZURE DATA FACTORY  │
                         │ Ingestion / Scheduling│
                         │ Orchestration / Monitor│
                         └───────────┬───────────┘
                                     │
                                     ▼
                     ┌───────────────────────────────┐
                     │       AZURE DATABRICKS        │
                     │      Apache Spark / PySpark   │
                     │                               │
                     │ BRONZE → SILVER → GOLD       │
                     └──────────────┬────────────────┘
                                    │
                                    ▼
                         ┌───────────────────────┐
                         │       SNOWFLAKE       │
                         │ Warehouse / ELT / SQL │
                         └───────────┬───────────┘
                                     │
                                     ▼
                         ┌───────────────────────┐
                         │      dbt / BI / SQL   │
                         │ Transformation & BI   │
                         └───────────────────────┘
```

---

# ☁️ Azure — Hands-on Progress

Current Azure learning is focused on understanding **how data actually moves through cloud services**, rather than learning services in isolation.

### Azure Storage

- Azure Blob Storage
- Azure Data Lake Storage Gen2
- Source / sink configuration
- File-based ingestion
- Storage-to-storage movement
- Execution metrics

### Azure Data Factory

- Pipelines
- Activities
- Datasets
- Linked Services
- Integration Runtime
- Copy Activity
- Parameters
- Variables
- Expressions
- Monitoring
- Execution troubleshooting

### Recent Pipeline Exercises

```text
SQL Server       ───────► ADLS Gen2
Blob Storage     ───────► ADLS Gen2
ADLS Gen2        ───────► ADLS Gen2
```

Execution analysis includes:

```text
Data Read · Data Written · Files Read / Written
Throughput · Copy Duration · DIUs
Parallel Copies · Queue Time · Transfer Time
```

---

# 🐍 Python & Data Processing

Python is being developed as the programming foundation for Data Engineering.

```text
Python Fundamentals
        ↓
Functions & Modules
        ↓
OOP Fundamentals
        ↓
File Handling
        ↓
Data Processing
        ↓
ETL Logic
        ↓
PySpark
```

The emphasis is on the Python skills that directly support data engineering.

---

# ⚡ Spark & Databricks

The next major learning phase focuses on **Apache Spark, PySpark and Azure Databricks**.

### Core Areas

- Spark architecture
- Driver / Executor concepts
- DataFrames
- Transformations
- Actions
- Spark SQL
- Joins
- Window functions
- Aggregations
- Schema handling
- JSON / CSV processing
- Partitioning
- Caching
- Performance fundamentals
- PySpark ETL
- Databricks notebooks
- Databricks compute
- Jobs / Workflows

### Delta Lake

```text
Delta Tables
     ↓
ACID Transactions
     ↓
Schema Enforcement
     ↓
MERGE
     ↓
UPDATE / DELETE
     ↓
Time Travel
     ↓
Incremental Processing
     ↓
Medallion Architecture
```

---

# ❄️ Snowflake

Snowflake is the primary cloud data warehouse target within this learning journey.

### Planned Focus

- Snowflake architecture
- Virtual warehouses
- Databases / schemas / tables
- Stages
- File formats
- COPY INTO
- Snowpipe
- Semi-structured data
- VARIANT
- FLATTEN
- MERGE
- Streams
- Tasks
- Time Travel
- Cloning
- RBAC
- Micro-partitions
- Query performance
- Warehouse sizing
- Cost optimization

The goal is to move beyond SQL querying into **Snowflake Data Engineering**.

---

# 🧱 Data Modelling

### Core Concepts

```text
Business Process
      ↓
Define Grain
      ↓
Identify Facts
      ↓
Identify Dimensions
      ↓
Define Relationships
      ↓
Design Star Schema
      ↓
Implement SCD
```

Focus areas:

- Grain
- Fact tables
- Dimension tables
- Star Schema
- Snowflake Schema
- Surrogate Keys
- Natural Keys
- SCD Type 1
- SCD Type 2
- Incremental loading
- Data quality

---

# 🧮 SQL Foundation

SQL remains the foundation underneath the entire stack.

My SQL learning includes **MySQL, data analysis and practical querying**, with continued progression toward Data Engineering-oriented SQL.

### Current / Continuing Focus

```text
JOINs
CTEs
GROUP BY / HAVING
CASE
NULL Handling
Subqueries
Window Functions
ROW_NUMBER
RANK / DENSE_RANK
LAG / LEAD
Conditional Aggregation
Deduplication
Latest Record Logic
Running Totals
Date Logic
```

### 🎓 Certificates

<table align="center" width="100%" style="border-collapse: collapse; border: none;">
<tr style="border: none;">
<td align="center" width="33.3%" style="border: none; padding: 12px; vertical-align: top;">
<strong>Tableau for Data Visualization</strong><br/>
<sub>BI & Visual Analytics</sub><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/Jhulan%20Dey%20-%20Tableau%20for%20Data%20Visualization%20Certificate.png"><img src="https://raw.githubusercontent.com/JhulanD/JhulanD/main/public/Jhulan%20Dey%20-%20Tableau%20for%20Data%20Visualization%20Certificate.png" width="100%" alt="Tableau Certificate"/></a><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/Jhulan%20Dey%20-%20Tableau%20for%20Data%20Visualization%20Certificate.png">🔍 View Certificate</a>
</td>
<td align="center" width="33.3%" style="border: none; padding: 12px; vertical-align: top;">
<strong>The Complete SQL Bootcamp</strong><br/>
<sub>Database & Querying</sub><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/The%20Complete%20SQL%20Bootcamp%20-%20Go%20from%20Zero%20to%20Hero.jpg"><img src="https://raw.githubusercontent.com/JhulanD/JhulanD/main/public/The%20Complete%20SQL%20Bootcamp%20-%20Go%20from%20Zero%20to%20Hero.jpg" width="100%" alt="SQL Bootcamp Certificate"/></a><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/The%20Complete%20SQL%20Bootcamp%20-%20Go%20from%20Zero%20to%20Hero.jpg">🔍 View Certificate</a>
</td>
<td align="center" width="33.3%" style="border: none; padding: 12px; vertical-align: top;">
<strong>MySQL for Data Analytics</strong><br/>
<sub>Analytics Engineering</sub><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/Jhulan%20Dey%20-%20MySQL%20for%20Data%20Analytics%20Certificate.png"><img src="https://raw.githubusercontent.com/JhulanD/JhulanD/main/public/Jhulan%20Dey%20-%20MySQL%20for%20Data%20Analytics%20Certificate.png" width="100%" alt="MySQL Certificate"/></a><br/><br/>
<a href="https://github.com/JhulanD/JhulanD/blob/main/public/Jhulan%20Dey%20-%20MySQL%20for%20Data%20Analytics%20Certificate.png">🔍 View Certificate</a>
</td>
</tr>
</table>

---

# 🚀 Key Hands-on Progress

### Azure Storage & ADLS Gen2

Configured source and sink flows, storage-to-storage movement and file-based ingestion.

### Azure Data Factory

Built practical pipelines using:

- Copy Activity
- Linked Services
- Datasets
- Integration Runtime
- Source / sink configuration
- Execution monitoring

### Data Movement

```text
SQL Server ─────────► ADLS Gen2
Blob Storage ───────► ADLS Gen2
ADLS Gen2 ──────────► ADLS Gen2
```

The exercises include reviewing real execution metrics such as data read/written, files processed, throughput, DIUs, parallel copies, queue time and transfer duration.

---

# 📈 Roadmap & Execution Milestones

- [x] **Phase 1 — Foundations** — Advanced SQL, MySQL, Excel, Power BI, Tableau
- [x] **Phase 2 — Azure Ingestion** — ADLS Gen2, Azure Data Factory, Pipelines, Linked Services, Integration Runtime
- [/] **Phase 3 — Python & Compute** — Python, PySpark, DataFrames, Spark SQL and performance fundamentals
- [ ] **Phase 4 — Databricks & Delta Lake** — Apache Spark, PySpark, Azure Databricks, Delta Lake, Medallion Architecture
- [ ] **Phase 5 — Snowflake & dbt** — Snowflake Engineering, semi-structured data, Streams, Tasks, dimensional modelling and dbt
- [ ] **Phase 6 — End-to-End Capstone** — Unified Azure → Databricks → Delta → Snowflake pipeline with data quality, monitoring, Git and CI/CD awareness

---

# 📂 Repository Layout

```text
.
├── 📂 azure/              # Storage configurations & ADF pipeline artifacts
├── 📂 databricks/         # Notebooks, PySpark ETL & Delta Lake
├── 📂 dbt/                # Transformation models, tests & snapshots
├── 📂 python/             # Data processing & pipeline logic
├── 📂 snowflake/          # DDL, staging scripts & procedures
├── 📂 sql/                # Queries, CTEs & optimization exercises
└── 📂 projects/           # End-to-end data engineering projects
```

---

# 🧠 How I Learn

This repository follows a simple engineering loop:

```text
LEARN → PRACTICE → BUILD → DEBUG → EXPLAIN → DOCUMENT → SHOWCASE
```

The objective is **understanding and evidence**, not simply completing courses.

---

# 🎯 End Goal

Build a credible, interview-ready profile for **Azure Data Engineering with strong Snowflake + Databricks capabilities**.

The final project should demonstrate:

```text
Ingestion
   ↓
Orchestration
   ↓
Transformation
   ↓
Data Quality
   ↓
Medallion Architecture
   ↓
Dimensional Modelling
   ↓
Incremental Processing
   ↓
SCD Type 2
   ↓
Snowflake
   ↓
Analytics
```

And, most importantly:

> **Be able to explain every major engineering decision made along the way.**

---

<div align="center">

## BUILD → DEBUG → EXPLAIN → DOCUMENT → SHOWCASE → APPLY

<br/>

**Azure Data Engineering · Snowflake · Databricks**

<br/>

<a href="https://github.com/JhulanD">GitHub</a> •
<a href="https://www.linkedin.com/in/jhulandey">LinkedIn</a> •
<a href="mailto:jhulandey.now@outlook.in">Contact</a>

</div>
