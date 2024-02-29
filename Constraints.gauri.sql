use sayali;
drop table Department;
create table Department(Dept_ID int, Dept_Name varchar(25),student_name varchar(25),Joinig_date date);
select * from Department;

desc Department; /*It describe all the information from the row and column in the table*/
insert into Department values(1,"Computer","Gauri","2023-02-04");
insert into Department values(2,"Electronic","Nikita","2023-03-05");
insert into Department values(3,"Mehanical","swati","2023-07-08");
insert into Department values(4,"Electrical","mahi","2023-05-01");
insert into Department values(6,"Computer","priyanka",null);
select * from department;

alter table Department
add column city char(25) not null;
select * from Department;

alter table Department
modify column city varchar(25) not null;
insert into Department values(1,"computer","chetana",null,"pune");
insert into Department values(8,"Electronic","nikita",null,null); /*it gives error*/


alter table Department
modify column city varchar(25) not null;   /*not null constraints*/
 
alter table Department
modify column Dept_ID int unique;          /*unique constraints*/

insert into Department values(9,"Electrical","Sarthak",null,"nagpur");
insert into Department values(8,"Electrical","gauri",null,"pune");
select * from department;
/*..........................................................................................*/

drop table  person;
create table person(id int, lastname varchar(23) not null , firstname varchar(24) unique);
insert into person values(3,"jadhav","shruti");
select * from person;

alter table person 
add column salary int check (salary>=10000);   /*check constraints*/
select * from person;
insert into person values(1,"choudhari","Gauri",12000);
insert into person values(2,"kulkarni","yogita",19000);


alter table persons
modify column ID int primary key;

 use sayali;
 create table emp_data(emp_id int primary key ,name char(25), age int );
 insert into emp_data values(101,"chetana", 26),(102,"trupti",24),(103,"sayali",23),(104,"priyanka",22),(105,"sahil",24);
 select * from emp_data;
 
 create table department2(dep_id int primary key, dep_name char(20), emp_id int,
 foreign key(emp_id) references emp_data(emp_id) );
insert into department2 values(1,"civil",102),(2,"IT",104);
insert into department2 values(3,"mechanical",103);
insert into department2 values(4,"computer",105);
select * from department2;

select name,age ,emp_id from  emp_data where emp_id=101;
select department2.dep_name ,emp_data.name from emp_data
inner join department2
on department2.emp_id=emp_data.emp_id;

/*cascade*/
In foreign key our two table is connect each other & we detect both table in same time this time we use cascade
create table empdata1(emp_id int primary key ,name char(25), age int );
create table departments2(dep_id int primary key, dep_name char(20), emp_id int,
foreign key(emp_id) references emp_data(emp_id)
on delete cascade
on update cascade);
delete from empdata1 where emp_id=102;
select * from empdata1;
select * from departments2;

insert into empdata1 values(101,"chetana", 26),(102,"trupti",24),(103,"sayali",23),(104,"priyanka",22),(105,"sahil",24);
 select * from emp_data;
 
insert into departments2 values(1,"civil",102),(2,"IT",104);
insert into departments2 values(3,"mechanical",103);
insert into departments2 values(4,"computer",105);
select * from departments2;







