# 🛒Order Management System (OMS)📦

**An end-to-end Order Management System data platform integrating DBT, Snowflake, Power BI, and GitHub for scalable analytics, ELT automation, and dynamic business intelligence reporting.**

![Dashboard](/images/Power%20BI%20_%20OMS_Dashboard.png)

## 🚀Project Overview

**This project demonstrates how to build a modern data pipeline for managing, analyzing, and reporting on order data. Leveraging DBT (Data Build Tool), Snowflake, and Power BI, the system automates Extract, Load, Transform (ELT) processes and provides interactive dashboards for business intelligence.**

## 🛠️Key Technologies Used

* **DBT**: For data transformation and modeling

* **Snowflake**: Cloud data warehouse for scalable storage and querying

* **Power BI**: Business intelligence tool for data visualization

* **GitHub**: Version control and collaboration platform

![DBT](/images/DBT.png)

## Architecture
🏗️ Architecture

* The OMS project follows a layered approach:

* Raw Data Layer: Source data (orders, customers, items) is loaded into Snowflake (L1_LANDING schema).

* DBT Models: Transformations and staging are implemented using DBT in L2_PROCESSING and L3_CONSUMPTION schemas.

* Snapshots: Track historical changes for slowly changing dimensions (SCD) with DBT snapshots.

* BI Layer: Power BI connects directly to Snowflake for building dashboards and reporting.

![Snowflake](/images/Snowflake.png)

## Workflow
1. Data Ingestion

* Load raw files or source data into Snowflake tables.

2. Transform with DBT

* Define sources and models in DBT.

* Use staging models (_stg) and fact/dimension tables (e.g., orders_fact, customerrevenue).

* Create snapshots for historical tracking of key metrics.

3. Version Control

* All DBT project code/scripts are managed in GitHub, enabling collaboration and reproducibility.

4. Visualization

* Power BI connects directly to Snowflake to build real-time interactive dashboards.

![Main_Dashboard](/images/Main.png)

## 📈Features

* Automated ELT pipelines for OMS data.

* Analytics-ready tables for reporting.

* Data quality enforcement via DBT tests.

* Scalable and modular design for future enhancements.

* Integration with BI tools for interactive insights.*