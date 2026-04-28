# 🍔 Food Retail Sales Analytics Project (SQL + Excel)

## 📌 Project Overview
This project is a simulated **food retail sales analytics system** designed to demonstrate data analysis workflow from database design to dashboard visualization. The project uses a structured **star schema data model**, SQL-based data processing, and Excel for interactive dashboard reporting.

The main objective is to analyze sales performance, product trends, and customer behavior in a retail food business scenario.

---

## 🎯 Objectives
- Design a relational database using **Star Schema architecture**
- Simulate a food retail sales dataset using SQL INSERT statements
- Perform data aggregation and analysis using SQL
- Implement basic **ETL (Extract, Transform, Load)** concepts
- Build an interactive dashboard using Excel for business insights

---

## 🧱 Database Structure (Star Schema)

### 📊 Fact Table
- `fact_sales`
  - product_id
  - customer_id
  - date_id
  - quantity_sold
  - total_amount

### 📦 Dimension Tables
- `dim_cabang` 
- `dim_produk` 
- `dim_pelanggan` 
- `dim_waktu` 

---

## 🔄 ETL Process
1. **Extract** → Define raw transactional structure
2. **Transform** → Normalize data into dimension & fact tables
3. **Load** → Insert 100+ simulated records using SQL INSERT statements

---

## 📈 Analysis Performed (OLAP)
- a. What is the total sales revenue across all three branches?
- b. Which branch has the highest total sales revenue?
- c. What are the top 10 best-selling products (based on quantity sold)?
- d. What is the total monthly sales revenue across all three branches?
- e. Which product category generates the highest revenue?
- f. Which customer age segment contributes the most to total purchases?
- g. Which branch has the highest number of transactions (transaction activity)?
