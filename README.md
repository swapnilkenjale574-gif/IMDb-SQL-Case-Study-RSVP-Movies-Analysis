# IMDb Movie Analysis Case Study (SQL)

## 📌 Project Overview
This project features an in-depth analytical case study of a comprehensive IMDb movie dataset using advanced SQL. The objective is to extract meaningful, data-driven business insights for **RSVP Movies**, an Indian film production house planning its next major global release. 

The analysis spans critical business domains including production volume trends, global audience rating metrics, genre profitability, and talent performance benchmarking.

---

## 🛠️ Tools & Technologies
* **Database Management System:** MySQL
* **Language:** SQL 
* **Advanced Concepts Applied:** Common Table Expressions (CTEs), Window Functions, Correlated Subqueries, Stored Procedures, and Dynamic SQL.
* **Version Control:** Git & GitHub

---

## 📊 Key Analysis & SQL Implementations

### 1. Data Exploration & Data Integrity Automation
Before conducting strategic analysis, database integrity was verified through systematic preprocessing:
* **Structural Auditing:** Calculated absolute row counts and mapped schema constraints across all structural dimensions.
* **Dynamic Automation:** Developed reusable **Stored Procedures using Dynamic SQL** (`PREPARE`, `EXECUTE`) to scan the schema and automate the detection of null and duplicate values across variable columns.
* **Standardization:** Corrected mismatched data types and formatted volatile global revenue columns to establish a standardized baseline for financial analysis.

### 2. Movie & Genre Trend Analysis
Uncovering macroeconomic trends in the film industry to optimize release schedules and content strategies:
* **Temporal Trends:** Analyzed historical movie releases year-over-year and month-over-month, identifying key industry seasonal patterns (such as March emerging as a peak release window).
* **Genre Deep-Dives:** Isolated the most prolific film categories and calculated exact average movie durations across distinct genres.
* **Volume Rankings:** Applied advanced Window Functions (`RANK()`, `DENSE_RANK()`) within partitions to rank genres based on total production output.

### 3. Ratings, Revenue, & Talent Benchmarking
Evaluating performance metrics to mitigate financial risks for upcoming production budgets:
* **Success Categorization:** Created rule-based logic to classify films into operational performance tiers ("Hit" vs. "Super-hit") using audience ratings and median distribution metrics.
* **Geographical Benchmarking:** Comparative output analysis between dominant production hubs (India vs. USA) to identify shifting regional market shares.
* **Talent Analytics:** Cross-examined data across `movie`, `genre`, `ratings`, and `names` tables using multi-stage complex joins to isolate top-performing directors and bankable actors.

---

## 🧩 Advanced SQL Concepts Demonstrated

* **Complex Multi-Table Joins:** Seamlessly traversing relationships between core tables (`movie`, `genre`, `ratings`, `role_mapping`, `names`) without data loss.
* **Common Table Expressions (CTEs):** Utilizing `WITH` clauses to break down complex, multi-step business logic into highly readable, modular queries.
* **Window Functions:** Leveraging analytical functions (`RANK()`, `DENSE_RANK()`, `ROW_NUMBER()`) to handle ties and generate competitive rank profiles.
* **Meta-Programming (Dynamic SQL):** Writing adaptive queries that automatically adjust parameters at runtime for structural database validation.

---

    ├── 1_data_cleaning.sql        # Stored procedures & validation scripts
    ├── 2_genre_analysis.sql       # Trend profiling and window functions
    └── 3_executive_insights.sql   # Final talent and strategic recommendations
