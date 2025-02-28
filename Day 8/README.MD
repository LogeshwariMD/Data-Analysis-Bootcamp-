These tasks will help you understand how to set up a Databricks environment, process data, create visualizations, and build dashboards.

---

## Task 1: Setup Environment
**Description:**
- Create your first cluster under the Compute Tab.
- In the Workspace, create a new Notebook and attach it to the created cluster.

**Expected Output:**
- A running cluster attached to a notebook.



**Steps to Complete:**
1. Navigate to the Compute Tab in Databricks.
2. Click on "Create Cluster" and configure it.
3. Once the cluster is running, go to the Workspace.
4. Create a new notebook and attach it to the cluster.
5. Save and validate the setup.

---

## Task 2: Read/Write Data
**Description:**
- Download the Excel files from Gapminder for "Communication > Cell phones (total)" and "Population".
- Create Databricks Tables from these files.

**Expected Output:**
- Data loaded into tables.



**Steps to Complete:**
1. Download the required datasets from Gapminder.
2. Upload them to Databricks using the "Data" tab.
3. Use Python (`pandas`, `pyspark`) or SQL to read and create tables.

```python
from pyspark.sql import SparkSession
spark = SparkSession.builder.appName("DatabricksTask").getOrCreate()
df = spark.read.format("csv").option("header", "true").load("/mnt/data/cellphones.csv")
df.write.saveAsTable("cellphones")
```

```sql
CREATE TABLE cellphones AS SELECT * FROM csv.`/mnt/data/cellphones.csv`;
```

---

## Task 3: Browse Catalog and Version History
**Description:**
- Locate the created tables in the Catalog.
- Checkpoint your notebook.

**Expected Output:**
- Screenshot of all tables in the default database and a checkpoint in Version History.



**Steps to Complete:**
1. Open Databricks Catalog and navigate to the default database.
2. Locate the tables created.
3. Checkpoint the notebook by clicking "Revision History" and creating a checkpoint.

---

## Task 4: Rise of Cell Phones
**Description:**
- Create a chart showing the number of cell phones per person over time.
- Join cell phones and population data.

**Expected Output:**
- A line chart representing the rise of cell phones per person over the years.



**Steps to Complete:**
1. Use SQL or Python to join the datasets.

```sql
SELECT year, (cellphones_total/population) AS cellphones_per_person FROM cellphones c
JOIN population p ON c.year = p.year;
```

2. Create a visualization in Databricks using the "Visualization" tab.

---

## Task 5: Dashboard
**Description:**
- Create a Notebook Dashboard View to include the above chart.

**Expected Output:**
- A dashboard with the line chart from Task 4.

**Difficulty Level:**
- Intermediate

**Steps to Complete:**
1. Open the notebook where the chart is created.
2. Click "View" -> "Dashboard".
3. Pin the visualization to the dashboard.
4. Save and customize the layout.

---

## Task 6: Notebooks Chaining
**Description:**
- Create another notebook and compare running another notebook using `%run` vs `dbutils.notebook.run()`.

**Expected Output:**
- Understanding the differences between the two methods.



**Steps to Complete:**
1. Create a new notebook (`notebook2`).
2. In the main notebook, run:

```python
%run ./notebook2
```

```python
dbutils.notebook.run("notebook2", 60)
```

3. Compare execution times and scope handling.

---

## Task 7: Widgets
**Description:**
- Add a widget to select multiple countries and use it to filter the data.

**Expected Output:**
- The widget filters tables when "Run All" is executed.



**Steps to Complete:**
1. Create a dropdown widget:

```python
dbutils.widgets.multiselect("countries", "USA", ["USA", "India", "China", "Germany"])
```

2. Use it in a query:

```sql
SELECT * FROM cellphones WHERE country IN ('${countries}')
```

3. Run the notebook and observe the filtered results.

---

## Notes:
- Ensure the cluster is running before executing queries.
- Store data in a structured format for better processing.
- Use visualization tools in Databricks to enhance analysis.
- Utilize Databricks widgets for interactivity.

This document serves as a guide to complete the tasks effectively in Databricks using Python and SQL. Happy coding!

