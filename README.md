# 🛒 SQL Retail Sales Analysis

This project involves analyzing retail sales data using **MySQL** to uncover business insights, such as customer behavior, top-selling categories, and revenue trends.  
It demonstrates **SQL skills** such as data cleaning, aggregation, filtering, and business analysis queries.

---

## 📌 Project Overview

- **Objective**: To analyze retail sales data and generate meaningful insights that can help improve business decisions.
- **Database Used**: MySQL
- **Dataset**: Retail transactions including date, time, customer details, category, and sales amount.

---

## 🗄️ Database Structure

**Database Name:** `sql_project_2`  
**Table Name:** `retail_sales`

| Column Name     | Data Type     | Description                     |
|----------------|--------------|---------------------------------|
| transactions_id | INT (PK)      | Unique ID for each transaction |
| sale_date      | DATE          | Date of sale                    |
| sale_time      | TIME          | Time of sale                    |
| customer_id    | INT           | Unique customer ID              |
| gender         | VARCHAR(15)   | Customer gender                 |
| age            | INT           | Customer age                     |
| category       | VARCHAR(15)   | Product category                 |
| quantity       | INT           | Number of items sold             |
| price_per_unit | FLOAT         | Price per item                   |
| cogs           | FLOAT         | Cost of goods sold               |
| total_sale     | FLOAT         | Total amount of sale             |

---

## 🔹 Features Implemented

### **1. Data Cleaning**
- Checking for missing or null values.
- Validating column integrity.
- Ensuring proper data types.

```sql
SELECT * FROM retail_sales
WHERE transactions_id IS NULL 
OR sale_date IS NULL 
OR sale_time IS NULL
OR gender IS NULL 
OR age IS NULL 
OR category IS NULL 
OR quantity IS NULL 
OR cogs IS NULL 
OR total_sale IS NULL;
```

---

### **2. Data Exploration**
- Total number of sales.
- Unique customers count.
- Unique product categories.

```sql
SELECT COUNT(*) AS total_sales FROM retail_sales;
SELECT COUNT(DISTINCT customer_id) AS unique_customers FROM retail_sales;
SELECT DISTINCT category FROM retail_sales;
```

---

### **3. Business Analysis Queries**
Includes various queries like:
- Sales by date, category, and customer.
- Top customers by total sales.
- Identifying best-selling months.
- Categorizing sales into shifts.

---

## 🚀 How to Run the Project

1. **Create Database and Table**
   ```sql
   CREATE DATABASE sql_project_2;
   USE sql_project_2;
   ```
2. **Import the SQL File**
   - Open MySQL Workbench or CLI.
   - Run:
     ```sql
     SOURCE path_to_your_file/sql_project_2.sql;
     ```

3. **Run Queries**
   - Execute the provided SQL queries step-by-step to explore and analyze data.

---

## 📊 Skills Demonstrated

- SQL Data Cleaning
- Data Aggregation & Grouping
- Conditional Logic with `CASE`
- Subqueries & CTE (Common Table Expressions)
- Business Analytics with SQL

---




