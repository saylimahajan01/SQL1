/*TCL commands
1.commit: used to save the changes permenantly
2.rollback: Used to undo one or more changes
3.savepoint: Used to save the changes temporarily so that it can be rolled back to a particular point
-DML commnads insert,delete,update this are transaction in a table: not permanant
- turn off Auto commit

*/

use students;
drop table account_data;
select * from account_data;

start transaction;
insert into account_data values(7,"ketki",25000);
select * from account_data;
start transaction;
insert into account_data values(11,"harshda",56000); 
select * from account_data;
commit;
insert into account_data values(11,"harshda",56000); 
select * from account_data;

update account_data set Acc_Name="sejal" where Acc_No=1;
insert into account_data values(22,"sashank",23000); 
delete from account_data where Acc_No=11;

select * from account_data;
/*here not using commit so changes made are temporary*/

rollback;
select * from account_data;
/*now use commit command before rollback*/
select * from account_data;

commit;
rollback;
select * from account_data;
update account_data set Acc_Name="sejal" where Acc_No=1;
insert into account_data values(22,"sashank",23000); 
delete from account_data where Acc_No=11;


start transaction;
savepoint initial;

select * from account_data;



