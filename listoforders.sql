--- LIST OF ORDERS

--- Select all record from the table.
SELECT *
FROM listoforders;

--- Select all orderID,CustomerName in city 'Pune'.
SELECT orderID,CustomerName,city
FROM listoforders
WHERE City = 'Pune';

--- Select orders in city Mumbai within'2018-10-05 and 2018-11-03'
SELECT * 
FROM listoforders 
WHERE OrderDate between '11/4/2018' and '12/4/2018' and city='Mumbai';

--- Count the number of orders for each state.
SELECT State, COUNT(OrderID) AS OrderCount
FROM listoforders
GROUP BY State;

--- Find the most recent order for each customer.
SELECT OrderID,orderDate,CustomerName
FROM listoforders 
order BY OrderDate desc;

--- Get ordersDate placed by Riya .
SELECT CustomerName , OrderDate
FROM listoforders
WHERE CustomerName='Riya';

--- Select orders from a specific date:
SELECT OrderID, OrderDate
FROM listoforders
WHERE OrderDate = '5/4/2018';

--- List the order IDs and cities where the state is "Gujarat" or "West Bengal".
SELECT CustomerName, orderid, city, state 
FROM listoforders 
WHERE state IN ('Gujarat', 'West Bengal');

--- Retrieve orders sorted by order ID in ascending order.
SELECT * 
FROM listoforders 
ORDER BY orderid ASC;


--- List all customers who placed orders either in "New York" or "Boston".
SELECT DISTINCT customername 
FROM listoforders 
WHERE city IN ('Pune', 'Jaipur');


---- Find the customers who have placed more than 5 orders.
SELECT customername, COUNT(*) AS total_orders 
FROM listoforders 
GROUP BY customername
HAVING total_orders > 5;

--- List orders where the customer name begins with "A" and is placed in "Florida".
SELECT * 
FROM listoforders 
WHERE city ='Pune' AND customername LIKE 'A%';
