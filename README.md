<div align="center">

<img src="https://raw.githubusercontent.com/JhulanD/JhulanD/main/public/ChatGPT Image Aug 30, 2026, 01_11_05 PM.png" width="100%" alt="Jhulan Dey — Data Engineering Journey"/>

<br/>

# ⚡ Data Engineering Journey

### Transitioning 20+ Years of Operations Leadership into Modern Cloud Data Platforms

<br/>

![Azure](https://img.shields.io/badge/Azure-Data%20Engineering-0078D4?style=flat-square&logo=microsoftazure&logoColor=white)
![Databricks](https://img.shields.io/badge/Databricks-Learning-FF3621?style=flat-square&logo=databricks&logoColor=white)
![Snowflake](https://img.shields.io/badge/Snowflake-Target-29B5E8?style=flat-square&logo=snowflake&logoColor=white)
![Python](https://img.shields.io/badge/Python-Active-3776AB?style=flat-square&logo=python&logoColor=white)
![SQL](https://img.shields.io/badge/SQL-Foundation-4479A1?style=flat-square&logo=mysql&logoColor=white)

<br/><br/>

[LinkedIn](https://www.linkedin.com/in/jhulandey) • [Portfolio](https://jd-portfolio-demo.netlify.app) • [Email](mailto:jhulandey.now@outlook.in)

</div>

---

## 📌 Executive Summary

> **Applying systems-thinking, operational quality control, and pipeline SLA rigor to build production-grade cloud data architectures.**

I am pivoting from **20+ years of high-volume media production and operations leadership** into **Cloud Data Engineering**.

My background managing multi-stage technical workflows, broadcast SLAs, asset governance, and process automation directly drives my approach to data pipelines: **build with resilience, optimize compute costs, handle schema drift, and enforce idempotent executions.**

```text
Operations & Workflows ──► Automation ──► SQL & Relational Models ──► Cloud ETL/ELT ──► Azure • Spark • Snowflake
```

---

## 🛠 Tech Stack & Technical Competencies

| Icon | Layer | Technologies & Concepts | Status |
| :---: | --- | --- | --- |
| ☁️ | **🗄️ Cloud Storage** | [ADLS](https://img.shields.io/badge/ADLS_Gen2-HNS-0078D4?logo=microsoftazure) Blob Storage, ADLS Gen2 | 🟢 Production Hands-on |
| 🔄 | **⚙️ Orchestration** | [ADF](https://img.shields.io/badge/ADF-Orchestration-0078D4?logo=microsoftazure) ADF, Self-Hosted IR (SHIR), Parameters, Expressions | 🟢 Production Hands-on |
| ⚡ | **🔥 Distributed Compute** | [Spark](https://img.shields.io/badge/Spark-Managed-E25A1C?logo=apachespark) ADF Mapping Data Flows, Apache Spark, PySpark | 🟡 Active Implementation |
| 🏗️ | **🧱 Lakehouse Architecture** | [Databricks](https://img.shields.io/badge/Databricks-Lakehouse-FF3621?logo=databricks) Delta Lake (ACID, Bronze/Silver/Gold) | 🟡 Active Implementation |
| ❄️ | **🏦 Data Warehousing** | [Snowflake](https://img.shields.io/badge/Snowflake-Warehouse-29B5E8?logo=snowflake) Stages, Snowpipe, Streams, Tasks, Time Travel, Zero-Copy Clone | 🟡 In Progress |
| 🔧 | **📐 Transformation & Modeling** | [dbt](https://img.shields.io/badge/dbt-Modeling-FF694B?logo=dbt) Dimensional Modeling (Star/Snowflake, SCD Type 1 & 2) | 🟡 In Progress |
| 💾 | **🐍 Database & Scripting** | [Python](https://img.shields.io/badge/Python-Scripting-3776AB?logo=python) [SQL](https://img.shields.io/badge/SQL-Advanced-4479A1?logo=mysql) Advanced SQL (Window, CTEs, MERGE), T-SQL, Python | 🟢 Foundation Verified |
| 📊 | **📈 BI & Automation** | [PowerBI](https://img.shields.io/badge/Power_BI-BI-F2C811?logo=powerbi) Power BI, Tableau, REST APIs, n8n, Make.com | 🟢 Certified / Experienced |
| 🔐 | **🚀 Governance & DevOps** | [Git](https://img.shields.io/badge/Git-GitHub-181717?logo=github) Git/GitHub, Microsoft CAF Standards | 🟢 Active |

---

## 🏗️ Production Target Architecture

```text
                         ┌───────────────────────────┐
                         │  📥 DATA SOURCES          │
                         │  On-Prem SQL / Web / APIs │
                         │  CSV / Parquet / JSON     │
                         └─────────────┬─────────────┘
                                       │
                                       ▼
                         ┌───────────────────────────┐
                         │  🔄 AZURE DATA FACTORY    │
                         │  Ingestion (SHIR / Cloud) │
                         │  Metadata Dynamic Routing │
                         └─────────────┬─────────────┘
                                       │
                                       ▼
                         ┌───────────────────────────┐
                         │  🗄️ ADLS Gen2             │
                         │  Landing / Raw Lake Zones │
                         └─────────────┬─────────────┘
                                       │
                                       ▼
                       ┌───────────────────────────────┐
                       │  ⚡ AZURE DATABRICKS          │
                       │  Apache Spark / PySpark ETL   │
                       ├───────────────────────────────┤
                       │  BRONZE  ──►  SILVER  ──► GOLD│
                       │   Raw        Cleaned     SCD2 │
                       └───────────────┬───────────────┘
                                       │
                                       ▼
                         ┌───────────────────────────┐
                         │  ❄️ SNOWFLAKE             │
                         │  Cloud Warehouse / ELT    │
                         │  Streams & Tasks / Snowpipe│
                         └─────────────┬─────────────┘
                                       │
                                       ▼
                         ┌───────────────────────────┐
                         │  📊 dbt / POWER BI        │
                         │  Business Curated Models  │
                         └───────────────────────────┘
```

---

## Azure Data Factory -> Key Hands-On Projects

Built practical pipelines using:

- Copy Activity
- Linked Services
- Datasets
- Integration Runtime
- Source / sink configuration
- Execution monitoring



### 1️⃣ 💳 PayPal Transaction Transformation Engine — `ADF Data Flow`
**Stack:** `Azure Data Factory` `ADLS Gen2` `Azure IR 8-Core Spark` `Azure SQL DB`
> **[PayPal Paid Transactions ETL (ADF Data Flow)](Azure-For-Data-Engineering/AzureDataFactory/paypal-transformation-dataflow/)**

> **Implementation:** Mapping Data Flow executing multi-CSV joins, payment status predicates (`Status == 'Paid'`), and loading curated records into Azure SQL DB.

> **Engineering Focus:** Avoided relational database locking by offloading joins and filtering upstream to Spark in-memory execution.

### 2️⃣ 🧩 Dynamic Metadata-Driven Ingestion & Routing Framework
**Stack:** `Azure Data Factory` `ADLS Gen2` `ForEach` `Get Metadata` `Dynamic Content`

> **Implementation:** Parameterized batch pipeline inspecting directory contents dynamically via Child Items, running parallel ingestion without payload reads, and directing target entities while ignoring corrupt drops.

> **Engineering Focus:** Decoupled pipeline orchestration from incoming file volume and naming changes, eliminating static hardcoding and UserErrorFileNotFound exceptions.

### 3️⃣ 🔗 Hybrid On-Premises Ingestion via Self-Hosted IR (SHIR)
**Stack:** `SQL Server 2025` `Self-Hosted IR` `ADLS Gen2` `Azure SQL DB`

> **Implementation:** Deployed a local Self-Hosted Integration Runtime to bridge network boundaries between on-premises SQL instances and cloud storage, standardizing linked services and datasets using Microsoft Cloud Adoption Framework (CAF) naming standards.

> **Engineering Focus:** Hybrid secure connectivity, firewall/port troubleshooting, and automated archival patterns post-transfer.


### Azure Storage & ADLS Gen2

Configured source and sink flows, storage-to-storage movement and file-based ingestion.


### Data Movement

```text
SQL Server ─────────► ADLS Gen2
Blob Storage ───────► ADLS Gen2
ADLS Gen2 ──────────► ADLS Gen2
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
