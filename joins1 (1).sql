/*A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

Let's look at a selection from the "Orders" table
and Then, look at a selection from the "Customers" table:*/

use project1;
select * from Orders;
select * from Customers;
/*Notice that the "CustomerID" column in the "Orders" table refers to the "CustomerID" in the "Customers" table.
 The relationship between the two tables above is the "CustomerID" column.
Then, we can create the following SQL statement (that contains an INNER JOIN), 
that selects records that have matching values in both tables:*/
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers ON Orders.CustomerID=Customers.CustomerID;

/*Supported Types of Joins in MySQL
INNER JOIN: Returns records that have matching values in both tables
LEFT JOIN: Returns all records from the left table, and the matched records from the right table
RIGHT JOIN: Returns all records from the right table, and the matched records from the left table
CROSS JOIN: Returns all records from both tables

syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;*/


/*JOIN Three Tables
The following SQL statement selects all orders with customer and shipper information:

Example*/
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM 
((Orders INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID) INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID);

/* LEFT JOIN Keyword
The LEFT JOIN keyword returns all records from the left table (table1), 
and the matching records (if any) from the right table (table2).
syntax:
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;

/*Note: The LEFT JOIN keyword returns all records from the left table (Customers), 
even if there are no matches in the right table (Orders).*/

/*The RIGHT JOIN keyword returns all records from the right table (table2), 
and the matching records (if any) from the left table (table1).
syntax:
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
*/
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;

/*Note: The RIGHT JOIN keyword returns all records from the right table (Employees), 
even if there are no matches in the left table (Orders).
*/

/*The CROSS JOIN keyword returns all records from both tables (table1 and table2).
syntax:
SELECT column_name(s)
FROM table1
CROSS JOIN table2;*/
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders;
/*Note: The CROSS JOIN keyword returns all matching records from both tables whether the other table matches or not.
 So, if there are rows in "Customers" that do not have matches in "Orders", 
 or if there are rows in "Orders" that do not have matches in "Customers", those rows will be listed as well.
If you add a WHERE clause (if table1 and table2 has a relationship), 
the CROSS JOIN will produce the same result as the INNER JOIN clause:*/

SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
CROSS JOIN Orders
WHERE Customers.CustomerID=Orders.CustomerID;

/*A self join is a regular join, but the table is joined with itself.
syntax:
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
*/
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;