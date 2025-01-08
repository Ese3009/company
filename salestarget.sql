--- Retrieve all order details from the table.
SELECT * 
FROM salestarget;

--- Get all records for the month of January.
SELECT * 
FROM salestarget 
WHERE Month = '2025-05-18';

--- Count the total number of orders per category.
SELECT category, COUNT(*) AS total_orders 
FROM orderdetails 
GROUP BY category;

---- Find the total target value for each month.
SELECT Month, SUM(target) AS total_target 
FROM salestarget 
GROUP BY Month;

--- List the categories with a total target value greater than 1000.
SELECT category, SUM(target) AS total_target 
FROM salestarget
GROUP BY category
HAVING SUM(target) > 1000;

---- Retrieve the month with the highest target value.
SELECT month, SUM(target) AS total_target
FROM salestarget
GROUP BY month
ORDER BY total_target DESC
LIMIT 1;

--- Find the average target value per category.
SELECT category, AVG(target) AS average_target 
FROM salestarget 
GROUP BY category;

--- Get the categories that have no orders (target is 0).
SELECT category 
FROM salestarget 
WHERE target = 0 
GROUP BY category;

--- Get the top 3 months with the highest total target values.
SELECT month, SUM(target) AS total_target
FROM salestarget
GROUP BY month
ORDER BY total_target DESC
LIMIT 3;

--- Show the month and category with the lowest target.
SELECT month, category, target
FROM salestarget
ORDER BY target ASC
LIMIT 1;
