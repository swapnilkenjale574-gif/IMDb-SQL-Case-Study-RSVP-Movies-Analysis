# SQL-Case-Study-IMDB-Movie-Analysis

## Project Overview
This project involves an in-depth analysis of a comprehensive IMDb movie dataset using SQL to extract meaningful business insights. The analysis focuses on understanding trends across movies, genres, ratings, and revenue to support data-driven decision-making for RSVP Movies, an Indian film production house planning their next global release.

### Tools & Technologies

Database: MySQL

Language: SQL (CTEs, Window Functions, Subqueries, Stored Procedures, Dynamic SQL)

Version Control: Git & GitHub

### Key Objectives

Schema Exploration: Understand the IMDb database structure and table relationships.

Data Integrity: Perform data cleaning, handle missing values, and identify duplicates.

Trend Analysis: Analyze movie release trends by year, month, and country.

Performance Metrics: Identify top-performing actors, directors, and production houses.

Strategic Insights: Use rating and revenue-based analysis to recommend high-potential movie genres and durations.

### Key Analysis Performed

#### 1. Data Exploration & Cleaning
Integrity Checks: Calculated row counts for all tables and identified columns with NULL values.

Automation: Developed Stored Procedures using Dynamic SQL to automate the detection of null and duplicate values across various columns.

Preprocessing: Handled missing data, corrected data types, and formatted revenue columns for standardized analysis.

#### 2. Movie & Genre Analysis
Release Trends: Analyzed movies released year-wise and month-wise (identifying March as a peak release month).

Genre Deep-Dive: Identified the most popular genres and calculated average movie durations per genre.

Rankings: Applied Window Functions to rank genres based on production volume.

#### 3. Ratings & Revenue Analysis
Success Metrics: Categorized movies into "Hit" and "Super-hit" based on audience ratings and median distribution.

Global Benchmarking: Compared production output between major hubs like India and the USA for recent years.

### SQL Concepts Applied

Complex Joins: Combining multiple tables (movie, genre, ratings, names) to find correlations.

Common Table Expressions (CTEs): Used for better readability and breaking down multi-step logic.

Window Functions: RANK(), DENSE_RANK(), and ROW_NUMBER() for competitive analysis.

Stored Procedures: Creating reusable logic for data validation tasks.

Dynamic SQL: Implementing PREPARE and EXECUTE statements for flexible query execution.
