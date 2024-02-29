show databases;
create table sayali;
show databases;

/*DDL*/
/*1.create: use to create a new table in the database*/

use sayali;
create table students(name char(20),Roll_No int,city char(20));
select * from students;

 insert into students values("sayli", 11, "nagpur");
 insert into students values("pragati",12,"nagpur");
 select * from students;
 
 /*2.Alter: to add the column,to rename the column,to drop the column*/
 /*2.1.(Rename):rename the column name*/
 alter table students
 rename column name to Name;
 select * from students;
 
 /*2.2(Add): to add the column*/
 alter table students
 add column Department varchar(25);
 select * from students;
 
 /*(DML)update: update the values in particular column*/
 update students set Department="CSE" where Name="sayli";
 update students set Department="CSE" where Name="pragati";
 select * from students;
 
 /*2.3:(Drop): drop the particular column name using alter*/
 alter table students
 drop column Department;
 select * from students;
 
 /*3.Truncate: use to delete all the rows from the table, but the table structure & its column remains same*/
 truncate table students;
 select * from students;
 
 /*Drop: 1.it used to delete both the structure and record store in the table.alter
		 2.Table permanently deleted*/
         
	alter table students
    drop table students;
    select * from students;
 
 

 
 
 
