Order Management System (OMS)
An end-to-end Order Management System (OMS) data platform project integrating DBT, Snowflake, Power BI, and GitHub for scalable analytics, ELT automation, and dynamic business intelligence reporting.
![Dashboard](/images/Power%20BI%20_%20OMS_Dashboard.png)

Project Overview
This project demonstrates how to build a modern data pipeline for managing, analyzing, and visualizing order-related business operations. The platform enables seamless data ingestion, transformation, and advanced reporting through automated workflows and cloud tools.

Key Technologies Used
Snowflake: Data warehousing for storing raw and processed order data.

DBT (Data Build Tool): Data modeling, transformation, and workflow orchestration.

Power BI: Business intelligence dashboarding and visualization.

GitHub: Source control, CI/CD, and project versioning.

![DBT](/images/DBT.png)

Architecture
Raw Data Layer: Source data (orders, customers, items, etc.) loaded into Snowflake (L1_LANDING schema).

DBT Models: Transformations and staging in DBT (L2_PROCESSING, L3_CONSUMPTION schemas).

Snapshots: Historical tracking for slowly changing dimensions (SCD) using DBT snapshots.

BI Layer: Power BI connected to Snowflake for reporting and dashboard creation.

![Snowflake](/images/Snowflake.png)

Workflow
Ingest Data: Load raw files or source data into Snowflake tables.

Transform with DBT:

Define sources and models in DBT, transforming raw data into analytics-ready tables.

Use staging (_stg) and fact/dimension modeling (e.g., orders_fact, customerrevenue).

Create snapshots for tracking changes in slowly changing dimensions.

Version Control:

All DBT project code/scripts are managed in GitHub for collaboration and reproducibility.

Visualization:

Connect Power BI directly to Snowflake for building real-time interactive dashboards.
![Main_Dashboard](/images/Main.png)
