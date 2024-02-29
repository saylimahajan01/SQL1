/*A subquery is a select query that is enclosed inside another query.
The inner select query is usaully used to determine the results of the outer select query.

syntax:
select dept from employee 
where salary=(select max(salary) from employee)
first the inner query is executed
output of inner query is substituted in outer qury;

write  a sql qury to display emp_name with maximum salary from employee table*/

use hr_analytics;
select * from employees;
select first_name, salary from employees
where salary=(select max(salary) from employees);

/*Types of subqury
1. with select statement
2. with update statement
3. with delete statement
4. with insert statement

1. select column_name from table 
where column_name opeartor(select column_name from table[where])
ex.select all the employees who have a salary less than avg salary for all the employees.*/
/*with update statement*/
use sayali;
update t1
set name="sejal"
where id in (select id from t2 where name="trupti");
select * from t1;
select * from t2;

/*with delete statement*/
delete from t1 
where id in(select id from t2 where name="trupti");
select * from t1;
select * from t2;

/*with insert statement*/
insert into t1
select * from t2
where  name in(select name from t2);
select * from t1;

select first_name,last_name,salary from employees
where salary < (select avg(salary) from employees);/*ANY and ALL are used as quantifiers in combination with comparison operators
(such as =, <, >, <=, >=, !=, etc.) to compare a single value with a set of values returned by a subquery. 
They are typically used in conjunction with subqueries and are often found in the WHERE clause of a 
SQL statement to filter rows based on a condition.

ANY:
The ANY operator returns TRUE if the comparison is true for at least one of the values in the result set of the subquery.
SELECT * FROM employees WHERE salary = ANY (SELECT salary FROM other_employees WHERE department = 'Sales');

ALL:
The ALL operator returns TRUE if the comparison is true for all values in the result set of the subquery.
SELECT * FROM products WHERE price > ALL (SELECT price FROM competitors WHERE product_id = products.id);

*/

create table lecturer(name char(20), age int);
insert into lecturer values("A",43),("B",52),("C",51),("D",35),("E",40);
insert into lecturer values("H",43);
select * from lecturer;

create table student(name char(20), age int);
insert into student values("X",20),("Y",21),("Z",19),("P",37),("Q",57);
insert into lecturer values("H",43);
select * from student;

select * from student
where age >=all(select age from lecturer);

select * from student
where age >=any(select age from lecturer);




