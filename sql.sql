show databases;
create database sayli;
show databases;
use sayli;
create table school1(class char(25), no_of_student int, no_of_teacher int);
select * from school1;
insert into school1 values("first",20,3),("second",35,4),("third",40,4);
select *from school1;
alter table school1
add column room_no int; 
select * from school1;
update school1 set room_no=1 where class="first";
update school1 set room_no=2 where class="second";
update school1 set room_no=3 where class="third";
select * from school1;
alter table school1
rename column room_no to Room_No;
select * from school1;
alter table school1
drop column Room_No;
select * from school1;
