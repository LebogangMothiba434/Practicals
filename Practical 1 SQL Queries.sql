--Q1
SELECT*FROM retailsales;
--Q2
SELECT transcation_id,
date,
customer_id
FROM retailsales;
--Q3
SELECT DISTINCT product_category
FROM retailsales;
--Q4
SELECT DISTINCT gender
FROM retailsales;
--Q5
SELECT* FROM retailsales
WHERE age>40;
--Q6
SELECT*FROM retailsales
WHERE price_per_unit BETWEEN 100 AND 500;
--Q7
SELECT*FROM retailsales
WHERE PRODUCT_CATEGORY = 'Beauty' OR PRODUCT_CATEGORY = 'Electronics'
--Q8
SELECT*FROM retailsales
WHERE PRODUCT_CATEGORY NOT IN ('Clothing')
--Q9
SELECT*FROM retailsales
WHERE QUANTITY >= 3
--Q10
SELECT COUNT(*) AS total_transcations
FROM retailsales;
--Q11
SELECT AVG(age)
FROM retailsales;
--Q12
SELECT SUM(quantity) AS total_quantity
FROM retailsales;
--Q13
SELECT MAX(total_amount)
FROM retailsales;
--Q14
SELECT MIN(price_per_unit)
FROM retailsales;
--Q15
SELECT COUNT(DISTINCT transcation_id) AS transcation_count,
product_category
FROM retailsales
GROUP BY 2;
--Q16
SELECT SUM(total_amount) total_revenue,
gender
FROM retailsales
GROUP BY gender;
--Q17
SELECT SUM(price_per_unit) average_price,
product_category
FROM retailsales
GROUP BY product_category;
--Q18
SELECT SUM(total_amount) AS total_revenue,
product_category
FROM retailsales
GROUP BY product_category
HAVING SUM(total_amount) > 1000;
--Q19
SELECT AVG(quantity) AS Average_Quantity,
product_category
FROM retailsales
GROUP BY product_category
HAVING AVG(quantity)>2
--Q20
SELECT
COUNT(DISTINCT TRANSCATION_ID) AS transcation_id,
CASE
WHEN SUM(total_amount)>1000 THEN 'High'
ELSE'low'
END AS spending_level
FROM retailsales
GROUP BY ALL;
--Q21
SELECT
customer_id,
age,
CASE
WHEN age<30 THEN 'youth'
WHEN age BETWEEN 30 AND 59 THEN 'adult'
ELSE 'senior'
END AS age_group
FROM retailsales;


