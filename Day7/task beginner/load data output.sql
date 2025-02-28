use bootcamp;
show tables;
select * from cell_phones;
select * from cellphones where year = 2022;
select count(*) from cellphones;
select count(*) from population;
select * from cellphones limit 5;
select Year, max(Cell_Phone_Total) as max_phones,min(Cell_Phone_Total) as min_phones,
		avg(Cell_Phone_Total) as avg_phones,
		sum(Cell_Phone_Total) as sum_phones from cellphones group by Year 
        order by Year desc;
SELECT 
    'max_phones' AS Metric, 
    MAX(CASE WHEN Year = 2000 THEN Cell_Phone_Total END) AS "2000",
    MAX(CASE WHEN Year = 2001 THEN Cell_Phone_Total END) AS "2001",
    MAX(CASE WHEN Year = 2002 THEN Cell_Phone_Total END) AS "2002"
FROM cellphones
UNION ALL
SELECT 
    'avg_phones',
    AVG(CASE WHEN Year = 2000 THEN Cell_Phone_Total END),
    AVG(CASE WHEN Year = 2001 THEN Cell_Phone_Total END),
    AVG(CASE WHEN Year = 2002 THEN Cell_Phone_Total END)
FROM cellphones
UNION ALL
SELECT 
    'sum_phones',
    SUM(CASE WHEN Year = 2000 THEN Cell_Phone_Total END),
    SUM(CASE WHEN Year = 2001 THEN Cell_Phone_Total END),
    SUM(CASE WHEN Year = 2002 THEN Cell_Phone_Total END)
FROM cellphones;
SELECT DISTINCT Year FROM cellphones ORDER BY Year;
SELECT 
    cp.Country,
    cp.Year,
    cp.Cell_Phone_Total,
    p.Population,
    (cp.Cell_Phone_Total / NULLIF(p.Population, 0)) AS Phones_Per_Person
FROM cellphones cp
LEFT JOIN population p 
    ON cp.Country = p.Country 
    AND cp.Year = p.Year
ORDER BY cp.Country, cp.Year;
  

SELECT Country, Year, Cell_Phone_Total
FROM (
    SELECT Country, Year, Cell_Phone_Total,
           RANK() OVER (PARTITION BY Year ORDER BY Cell_Phone_Total DESC) AS rank_num
    FROM CellPhones
    WHERE Cell_Phone_Total > 0  -- Exclude zero values
) ranked
WHERE rank_num = 1;


