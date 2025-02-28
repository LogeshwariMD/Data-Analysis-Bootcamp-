# README: MySQL Data Processing and Analysis Tasks

## Overview
This document provides detailed explanations and instructions for several MySQL data processing and analysis tasks using Python and SQL. These tasks will help you gain experience in loading data, performing aggregations, joining tables, and using window functions.

---

## Task 1: Load Data into MySQL from Python
**Description:**
- Download Excel files from Gapminder for "Communication > Cell phones (total)" and "Population".
- Create Pandas DataFrames from the downloaded files.
- Load the data into MySQL as two separate tables.

**Expected Output:**
- Data from Python Pandas DataFrame successfully loaded into MySQL tables.



**Steps to Complete:**
1. Download the required datasets from Gapminder.
2. Use Pandas to read the Excel files.
3. Establish a connection to MySQL using `mysql-connector-python` or `SQLAlchemy`.
4. Create tables in MySQL.
5. Load the Pandas DataFrame into MySQL tables using `.to_sql()`.

```python
import pandas as pd
import mysql.connector

# Load data into pandas
cell_phones = pd.read_excel("cellphones.xlsx")
population = pd.read_excel("population.xlsx")

# Connect to MySQL
db_connection = mysql.connector.connect(host="localhost", user="root", password="password", database="test_db")
cursor = db_connection.cursor()

# Insert data into MySQL
cell_phones.to_sql("cellphones", db_connection, if_exists='replace', index=False)
population.to_sql("population", db_connection, if_exists='replace', index=False)

cursor.close()
db_connection.close()
```

---

## Task 2: Aggregations
**Description:**
- Retrieve the MAX, AVG, and SUM of the number of cell phones for each year.

**Expected Output:**
- Aggregated statistics for each year.



**Steps to Complete:**
1. Open MySQL Workbench or any SQL execution environment.
2. Run the following SQL query:

```sql
SELECT year, MAX(cellphones_total) AS max_cellphones, 
            AVG(cellphones_total) AS avg_cellphones, 
            SUM(cellphones_total) AS total_cellphones
FROM cellphones
GROUP BY year;
```

---

## Task 3: Joining Tables
**Description:**
- Join the `cellphones` and `population` tables on `country` and `year`.
- Calculate the number of cell phones per person.

**Expected Output:**
- A table displaying `year`, `country`, and `cell phones per person`.



**Steps to Complete:**
1. Open MySQL Workbench.
2. Execute the SQL query:

```sql
SELECT c.year, c.country, (c.cellphones_total / p.population) AS cellphones_per_person
FROM cellphones c
JOIN population p ON c.country = p.country AND c.year = p.year;
```

---

## Task 4: Aggregations with Retrieval / Window Functions
**Description:**
- Find the country with the highest number of cell phones for each year.
- Use window functions.

**Expected Output:**
- A table showing `year`, `country`, and `max cellphones`.


**Steps to Complete:**
1. Open MySQL Workbench.
2. Execute the following SQL query:

```sql
SELECT year, country, cellphones_total
FROM (
    SELECT year, country, cellphones_total, 
           RANK() OVER (PARTITION BY year ORDER BY cellphones_total DESC) AS rnk
    FROM cellphones
) ranked
WHERE rnk = 1;
```

---

## Task 5: Find Nearby Restaurants
**Description:**
- Get restaurant rankings by distance from a specified location.
- Use both `RANK()` and `DENSE_RANK()` to compare results.

**Expected Output:**
- A table displaying restaurant rankings based on distance.



**Steps to Complete:**
1. Download restaurant data from Kaggle.
2. Load it into a MySQL table using Pandas or SQL.
3. Use SQL queries to find the nearest restaurants.

```sql
SELECT name, location, distance_km,
       RANK() OVER (ORDER BY distance_km ASC) AS rank_value,
       DENSE_RANK() OVER (ORDER BY distance_km ASC) AS dense_rank_value
FROM restaurants;
```

---

## Additional Notes:
- Ensure MySQL is installed and running before executing queries.
- Validate data after loading it into MySQL.
- Use indexes for faster query execution.
- Use SQL Workbench for query execution and result visualization.

This document serves as a guide to completing MySQL tasks effectively using Python and SQL. Happy coding!

