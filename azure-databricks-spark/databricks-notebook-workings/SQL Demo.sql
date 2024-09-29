-- Databricks notebook source
CREATE DATABASE IF NOT EXISTS f1_presentation
LOCATION "/mnt/presentation/"

-- COMMAND ----------

SHOW DATABASES;

-- COMMAND ----------

SELECT current_database()

-- COMMAND ----------

-- MAGIC %python
-- MAGIC df = spark.read.format("parquet").load("/mnt/presentation/race_results")
-- MAGIC df.write.mode("overwrite").saveAsTable("f1_presentation.race_results")

-- COMMAND ----------

USE F1_PRESENTATION

-- COMMAND ----------

SELECT current_database()

-- COMMAND ----------

SHOW TABLES

-- COMMAND ----------

SELECT * FROM RACE_RESULTS;

-- COMMAND ----------

-- driver ratings
CREATE OR REPLACE TEMP VIEW DRIVER_RATINGS AS 
SELECT
DRIVER_NAME, RACE_YEAR, RACE_NAME,
SUM(POINTS) AS TOTAL_POINTS
FROM F1_PRESENTATION.race_results
GROUP BY RACE_YEAR, RACE_NAME, DRIVER_NAME 


-- COMMAND ----------

-- MAGIC %python 
-- MAGIC displayHTML("<h1 style='text-align: center; color:black; background-color:white;'>Few Visualisations on F1 Data</h1>")

-- COMMAND ----------

SELECT RACE_YEAR, 
sum(TOTAL_POINTS) AS TOTAL_POINTS
FROM DRIVER_RATINGS WHERE DRIVER_NAME = 'Max Verstappen'
GROUP BY (RACE_YEAR)


-- COMMAND ----------

SELECT RACE_YEAR, DRIVER_NAME,
sum(TOTAL_POINTS) AS TOTAL_POINTS
FROM DRIVER_RATINGS WHERE DRIVER_NAME = 'Lewis Hamilton' or DRIVER_NAME = 'Max Verstappen'
GROUP BY RACE_YEAR, DRIVER_NAME

-- COMMAND ----------

CREATE OR REPLACE TEMP VIEW CONSTRUCTOR_RATINGS AS 
SELECT
TEAM, RACE_YEAR, RACE_NAME,
SUM(POINTS) AS TOTAL_POINTS
FROM F1_PRESENTATION.race_results
GROUP BY RACE_YEAR, RACE_NAME, TEAM 

-- COMMAND ----------

SELECT TEAM, RACE_YEAR, SUM(TOTAL_POINTS) AS TOTAL_POINTS FROM CONSTRUCTOR_RATINGS WHERE RACE_YEAR > 2010 GROUP BY RACE_YEAR, TEAM

-- COMMAND ----------


