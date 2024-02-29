show databases;
use sayali;

create table student1(name char(25), roll_no int, subject char(25));
select * from student1;
insert into student1 values("sayali", 101, "sanskrit");
select * from student1;
insert into student1 values("gauri", 102, "maths");
select * from student1;


start transaction;
update student1 set name="sahil" where subject="maths";
select *from student1;

rollback;
select *from student1;

start transaction;
commit;
insert into student1 values("ritesh", 103, "english");
update student1 set name="abhi" where subject="maths";
delete from student1 where subject="sanskrit";
select * from student1;

rollback;
select * from student1;

use sayali;
start transaction;
savepoint s1;
insert into student1 values("rushi", 104, "marathi");
select * from student1;

savepoint s2;
update student1 set name="adhya" where subject="maths";
select * from student1;
 
rollback to s1;
select * from student1;

rollback to s2;
select * from student1;