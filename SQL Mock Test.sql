/*Q1. Write the SQL query to get the maximum salary of an employee from a table
named employees.*/
create database employees;
 use employees;
 create table employees(employee_name char(20), salary int);
 insert into employees values("A",24000),("C",34000),("D",55000),("E",75000),("F",21000),("G",40000),("H",50000);
 select * from employees where salary=(select Max(salary) from employees);
 
 /*Q2.What is a Primary Key? Give one example.
 primary key is a single or combination of the field, which is used to identify each record in a table uniquely*/
 
 /*Q3.How will you change the datatype of a column?*/
 select * from employees;
desc employees;
alter table employees
modify salary char(20);

/*Q4.Table: products
Columns: product_id, product_name, price
Problem: Find all products with a price greater than $50.*/
create table product(product_id int, product_name char(20), price int);
insert into product values(1,"A", 60),(2,"B",40),(3,"C",80),(4,"D",55);
SELECT * FROM Product
WHERE Price >50;

/*Q5. Table: employees
Columns: employee_id, name, salary
Problem: List employees in descending order of salary.*/
select * from employees order by salary desc;

/*Q6. Table: students
Columns: student_id, name, age
Problem: Insert a new student with the name "Alice" and age 22.*/
create table students(student_id int, name char(20), age int);
insert into students values(101,"sayali",22),(102,"gauri",23);
select * from students;
insert into students(name,age) values("Alice",22);

/*Q7.Write an SQL query to find the names of employees starting with “A”*/
use project1;  
select * from employees;
SELECT * FROM employees
WHERE  FirstName LIKE 'a%';

/*Q8. What are the types of joins in SQL?
     
1.Inner Joins:return record that have matching values in both table
2.Right Joins:return all records from table1 and the matchng records from the right table2
3.Left Joins:return all records from table2 and the matchng records from the right table21
4.Cross Joins:return all record from both the table
5.Self Joins:table is join with itself*/

/* Q9. Tables: employees, departments
Columns: employee_id, name, salary, department_id, department_name
Problem: Retrieve the names of employees who earn more than the average salary
in their respective departments.*/
drop table employee1;
create table employee1(employee_id int, name char(20),salary int);
insert into employee1 values(201, "sayali",11000),(202,"gauri",12000),(203,"arohi",13000),(204,"adhya",14000),(205,"ritesh",15000);
select * from employee1;
drop table department;
create table department(department_id int, department_name char(20), employee_id int);
insert into department values(1, "CSE",201),(2,"IT",202),(3,"ME",203),(4,"civil",204),(5,"electrical",205);
select * from department;

select department.department_name,employee1.name from department
inner join employee1
on department.employee_id=employee1.employee_id
where employee1.salary > (select avg(salary) from employee1);


/*Q10. Table: orders
Columns: order_id, order_date, total_amount
Problem: Find the total order amount for each month of the year.*/
drop table orders1;
create table orders1(order_id int,order_date char(20), total_amount int);
insert into orders1 values(1, "11-2-2001", 1200),(2, "11-2-2001", 1400),(3,"23-6-2023",3400),(4,"12-3-2022",2300);
select * from orders1;
select sum(total_amount) from orders1
group by order_date;

/*Q11. Table: customers
Columns: customer_id, customer_name, email
Problem: Insert a new customer with a unique customer ID and email address.*/
drop table customers;
create table customers(customer_id int unique, customer_name char(20),email char (25)unique);
insert into customers values(1,"abc","abcd12@gamil.com"),(2,"pqr","pqr34@gamil.com"),(3,"xyz","xyz56@gmail.com"),(2,"jkl","jkl78@gmail.com");
select * from customers;



