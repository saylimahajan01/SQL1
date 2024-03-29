/*Aggregate functions in SQL are used to perform a calculation on a set of values and return a single value. 
These functions are often applied to columns in a database table and are used to summarize or derive information from the data. 
Here are some common aggregate COUNT:*/
use project1;
/*1.COUNT() function counts the number of rows in a result set.
Example:*/
select * from employees;
SELECT COUNT(*) FROM employees;


/*2.SUM() function calculates the sum of values in a numeric column.
Example:*/
SELECT SUM(Price) FROM products;

/*3.AVG:
AVG() function calculates the average value of a numeric column.*/
SELECT avg(Price) FROM products;

/*4.MIN:
MIN() function retrieves the minimum value from a column.*/
SELECT MIN(price) FROM products;

/*5.MAX:
MAX() function retrieves the maximum value from a column.*/
SELECT MAX(price) FROM products;



/*The SQL GROUP BY Statement
The GROUP BY statement groups rows that have the same values into summary rows, like
 "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions 
(COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

GROUP BY Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);*/

/*1.The following SQL statement lists the number of customers in each country:*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

/*2.The following SQL statement lists the number of customers in each country, sorted high to low:
Example*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;


/*GROUP BY With JOIN Example
The following SQL statement lists the number of orders sent by each shipper:

Example*/
select * from shippers;
select * from orders;
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;



/*HAVING (used with GROUP BY):

HAVING is used with the GROUP BY clause to filter the results of a grouped query based on a condition.
Example:*/

SELECT ProductName, AVG(Price) as  Avg_Price
FROM products
GROUP BY ProductName
HAVING AVG(Price) > 50;

/*1.The following SQL statement lists the number of customers in each country. 
Only include countries with more than 5 customers:*/


SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

/*2.The following SQL statement lists the number of customers in each country,
 sorted high to low (Only include countries with more than 5 customers):

Example*/
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

/*joins.3.The following SQL statement lists the employees that have registered more than 10 orders:

Example*/
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

/*4.The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:
Example
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;*/



/*SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the AS keyword.*/

SELECT CustomerID AS ID
FROM Customers;
