
show databases;
/* DDL
1.create: use to create a new table in the database*/
create database sayali;
show databases;
use sayali;


create table student(name char(25), id int, city char(20));
select * from student;

/*DDL
2.Alter: to add the column, to rename the column, to drop the column*/

alter table student
rename column name to Name;
select * from student;

alter table student
add column Department  varchar(25);
select * from student;

insert into student values("sayali", 1, "nagpur", "CSE");
select * from student;

/*3. drop:it used to delete both the stored and record stored in the table, table permanentlydelete*/
drop table student;
drop table employee;

/*DML
1.Insert:used to Insert data into the row of table*/
create table employee(emp_name char(25), salary int, mobile_no char(11));
select * from employee;
insert into employee values("sayli", 15000, "9075020467");
insert into employee values("gauri", 16000, "9075750204");

select * from employee;

/*DDL
4. Truncate: use to delete all the rows from the table, but the the table structure & its columns remain*/
truncate table employee;

/*DML
update:update or modify the value of a column in the table(modify= datatype change)*/

update employee set emp_name = "sahil"  where emp_name="gauri";
update employee set salary=30000 where emp_name="sahil";

/* delete:used to remove one or more rows from a table*/
delete from employee where salary=30000;

alter table employee
modify column mobile_no char(25);
select * from iris_csv;












 






