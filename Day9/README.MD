# README: Data Visualization Tasks in Power BI
 These tasks will help you build essential data visualization skills and improve your ability to analyze and present data effectively.

---

## Task 1: Life Expectancy Chart
**Description:**
- Create a line chart with average life expectancy on the Y-axis and year on the X-axis.
- This will visualize the trend of life expectancy over time.

**Expected Output:**
- A well-formatted line chart that shows how life expectancy has changed over the years.



**Steps to Complete:**
1. Load the dataset into Power BI.
2. Select the "Line Chart" visualization.
3. Drag "Year" to the X-axis and "Life Expectancy" to the Y-axis.
4. Format the chart with appropriate titles and labels.
5. Save the Power BI file.

---

## Task 2: Income Chart
**Description:**
- Create a chart that visualizes the average, minimum, and maximum income over the years.

**Expected Output:**
- A line or clustered bar chart displaying trends for average, minimum, and maximum income.



**Steps to Complete:**
1. Load the dataset into Power BI.
2. Select the "Line Chart" or "Clustered Column Chart" visualization.
3. Drag "Year" to the X-axis and "Average Income," "Minimum Income," and "Maximum Income" to the Y-axis.
4. Assign different colors to each income type.
5. Add a legend and format the axes.
6. Save the Power BI file.

---

## Task 3: Rise of Cell Phones
**Description:**
- Create a chart showing the number of cell phones per person over time.
- Requires joining two datasets on country and year.

**Expected Output:**
- A line or area chart representing the number of cell phones per person across different years.



**Steps to Complete:**
1. Load both datasets into Power BI.
2. Use the "Merge Queries" feature in Power Query to join the tables on "Country" and "Year."
3. Create a calculated column to derive the number of cell phones per person.
4. Select the "Line Chart" or "Area Chart" visualization.
5. Drag "Year" to the X-axis and "Cell Phones Per Person" to the Y-axis.
6. Format the chart and save the file.

---

## Task 4: World Map
**Description:**
- Create a world map where countries are color-coded based on their population.
- Add a slider to visualize changes over different years.

**Expected Output:**
- A dynamic map with a color gradient indicating population sizes.
- A slider to adjust the year and update the map accordingly.



**Steps to Complete:**
1. Load the dataset into Power BI.
2. Select the "Filled Map" visualization.
3. Drag "Country" to the location field and "Population" to the values field.
4. Apply a color scale to represent population differences.
5. Add a "Year" slicer to enable user selection of different years.
6. Ensure the map updates dynamically with the slicer.
7. Save the Power BI file.

---

## Task 5: Animated Hans Rosling’s Bubble Chart
**Description:**
- Create an animated bubble chart similar to Hans Rosling’s visualization in "200 Years in 4 Minutes."

**Expected Output:**
- A bubble chart where each bubble represents a country, with:
  - X-axis: Income
  - Y-axis: Life Expectancy
  - Bubble Size: Population
  - Animation: Progression over years



**Steps to Complete:**
1. Load the dataset into Power BI.
2. Select the "Scatter Chart" visualization.
3. Drag "Income" to the X-axis, "Life Expectancy" to the Y-axis, and "Population" to the Size field.
4. Add "Country" to the Details field.
5. Drag "Year" to the Play Axis to enable animation.
6. Format the chart for better readability.
7. Save the Power BI file.

---

## Notes:
- Ensure data is clean and formatted properly before visualization.
- Use appropriate chart types to best represent the data.
- Utilize Power Query and DAX for data transformations where needed.
- Customize visuals with colors, labels, legends, and interactivity for clarity.

This document serves as a guide to complete the tasks effectively in Power BI. Happy visualizing!

