--- Retrieve all data from the orderdetails table.
SELECT * 
FROM listoforders.orderdetails;

--- Find all orders with a profit greater than 500.
SELECT * 
FROM orderdetails 
WHERE profit > 1000;

--- List all orders that belong to the 'Electronics' category.
SELECT * 
FROM orderdetails 
WHERE category = 'Electronics';

--- Get the total quantity ordered for each category.
SELECT category, SUM(quantity) AS total_quantity 
FROM orderdetails 
GROUP BY category;

--- Find the average amount for orders in each category.
SELECT category, AVG(amount) AS average_amount 
FROM orderdetails 
GROUP BY category;

--- Find the total profit for each order.
SELECT orderid, SUM(profit) AS total_profit 
FROM orderdetails 
GROUP BY orderid;

--- Show the total amount and total quantity for each category and subcategory.
SELECT category, subcategory, SUM(amount) AS total_amount, SUM(quantity) AS total_quantity
FROM orderdetails
GROUP BY category, subcategory;

--- What is the highest profit recorded in the orderdetails table
SELECT orderid, MAX(profit) AS highest_profit 
FROM orderdetails 
GROUP BY orderid;

--- Find the order with the lowest amount.
SELECT MIN(amount) 
FROM orderdetails;

---- Get the total amount and profit for the 'Clothing' category.
SELECT SUM(amount) AS total_amount, SUM(profit) AS total_profit
FROM orderdetails
WHERE category = 'Clothing';

