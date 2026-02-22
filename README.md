# Sales Data Warehouse (SQL Server)

## 📌 Project Overview
This project demonstrates an end-to-end Sales Data Warehouse built using SQL Server following the Medallion Architecture (Bronze, Silver, Gold layers).

The system integrates CRM and ERP data sources and transforms them into analytical-ready star schema tables.

---

## 🏗 Architecture

### 1️⃣ Integration Model
![Integration Model](docs/01_integration_model.png)
### 2️⃣ CRM & ERP Mapping
![CRM ERP Mapping](docs/02_crm_erp_mapping.png)

### 3️⃣ Medallion Architecture
![Medallion Architecture](docs/03_medallion_architecture.png)

### 4️⃣ Gold Layer Star Schema
![Star Schema](docs/04_star_schema.png)

---

## 🥉 Bronze Layer
- Raw data ingestion
- CRM & ERP source tables
- Minimal transformations

## 🥈 Silver Layer
- Data cleaning
- Standardization
- Data transformations

## 🥇 Gold Layer
- Fact & Dimension tables
- Business-ready analytical model
- Star schema design

---

## 🛠 Technologies Used
- SQL Server
- T-SQL
- Data Warehousing Concepts
- Medallion Architecture
- Star Schema Modeling

---

## 📊 Key Features
- End-to-end ETL flow
- CRM + ERP data integration
- Dimensional modeling
- Fact & Dimension design
- Sales calculation logic (Quantity × Price)

---

## 👩‍💻 Author
Chittimireddy Navyasree
