# DBT (Data Build Tool)
- In ELT/ETL pipelines, DBT focuses on the transform part. Its advantage lies in being able to use the processing power of data warehouses such as Snowflake.
- Affordable as an open source version is available, uses SQL - these reasons have led to wide adaptation

## Basic Project Setup
- Setup python venv
- Install dbt-core and dbt-postgres
- Run ```dbt init``` and provide necessary inputs such as db, schema, port etc
- A new dbt project would be created.
- ```dbt debug``` can be used to check if database connections are working as expected.
- All variable values such as db, port, user, pwd can be found in .dbt/profiles.yml

## Create DBT Model
- Model: A SQL Query that is designed to perform a particular data transformation task on your data platform.
- Start by creating a .sql file in models dir and put in the sql query you want.
- ```dbt run``` references dbt_project.yml and profiles.yml and runs the query. By default, the result of the query is stored as a view. This is output on dbt run. You can check this view and see the result of the query there. 
- dbt_project.yml or models file can be edited to create a table instead of a view if required. 
