  --Q1
SELECT*FROM retail_sales_dataset;
--Q2
SELECT `Transcation ID`,
`Date`,
`Customer ID`
FROM retail_sales_dataset;
--  Q3
SELECT DISTINCT `Product Category`
FROM retail_sales_dataset;
--Q4
SELECT DISTINCT Gender
FROM retail_sales_dataset;
--Q5
SELECT* FROM retail_sales_dataset
WHERE Age>40;
--Q6
SELECT*FROM retail_sales_dataset
WHERE `Price per unit` BETWEEN 100 AND 500;
--Q7
SELECT*FROM retail_sales_dataset
WHERE `Product Category` = 'Beauty' OR `Product Category` = 'Electronics'
--Q8
SELECT *
FROM retail_sales_dataset
WHERE `Product Category` NOT IN ('Clothing');
--Q9
SELECT * 
FROM retail_sales_dataset
WHERE `Quantity` >= 3;
--Q10
SELECT COUNT(*) AS total_transactions
FROM retail_sales_dataset;
--Q11
SELECT AVG(`Age`) AS average_age
FROM retail_sales_dataset;
--Q12
SELECT SUM(`Quantity`) AS total_quantity
FROM retail_sales_dataset;
--Q13
SELECT MAX(`Total Amount`) AS max_total_amount
FROM retail_sales_dataset;
--Q14
SELECT MIN(`Price Per Unit`) AS min_price_per_unit
FROM retail_sales_dataset;
--Q15
SELECT 
  COUNT(DISTINCT `Transcation ID`) AS transaction_count,
  `Product Category`
FROM retail_sales_dataset
GROUP BY `Product Category`;
--Q16:
SELECT 
  SUM(`Total Amount`) AS total_revenue,
  `Gender`
FROM retail_sales_dataset
GROUP BY `Gender`;
--Q17
SELECT 
  AVG(`Price Per Unit`) AS average_price,
  `Product Category`
FROM retail_sales_dataset
GROUP BY `Product Category`;
--Q18
SELECT 
  SUM(`Total Amount`) AS total_revenue,
  `Product Category`
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING SUM(`Total Amount`) > 1000;
--Q19
SELECT 
  AVG(`Quantity`) AS average_quantity,
  `Product Category`
FROM retail_sales_dataset
GROUP BY `Product Category`
HAVING AVG(`Quantity`) > 2;
--Q20
WITH customer_spend AS (
  SELECT 
    `Customer ID`, 
    SUM(`Total amount`) AS total_spent
  FROM retail_sales_dataset
  GROUP BY `Customer ID`
)
SELECT 
  COUNT(*) AS transaction_count,
  CASE 
    WHEN total_spent > 1000 THEN 'High'
    ELSE 'Low'
  END AS spending_level
FROM customer_spend
GROUP BY 
  CASE 
    WHEN total_spent > 1000 THEN 'High'
    ELSE 'Low'
  END;
  --Q21
 SELECT
  `Customer ID`,
  `Age`,
  CASE
    WHEN `Age` < 30 THEN 'Youth'
    WHEN `Age` BETWEEN 30 AND 59 THEN 'Adult'
    ELSE 'Senior'
  END AS age_group
FROM retail_sales_dataset; 