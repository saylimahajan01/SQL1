/* set operators: Used to jion multiple tables with single query
UNION
UNION ALL
INTERSECT
MINUS
MySQL doesent Support INTERSECT,MINUS.

JOIN is used to combine rows from two or more tables based on a related column between them.
It's typically used when you want to retrieve data from multiple tables and create a new result
set by matching rows from each table based on a common column.


UNION:
UNION is used to combine the result sets of two or more SELECT statements into a single result set.
It removes duplicate rows from the combined result set, so it's often used when you want to retrieve 
distinct values from multiple queries.
It's important to note that UNION requires that the SELECT statements involved have the same number
of columns and that the data types of corresponding columns match.

UNION ALL:
UNION ALL is similar to UNION, but it does not remove duplicate rows. 
It combines all rows from the SELECT statements without any elimination of duplicates.
Use UNION ALL when you want to combine all rows from multiple queries, including duplicate rows if they exist.
*/
use sayali;
create table t1(id int, name char(20));
insert into t1 values(1,"chetana"),(2,"sahil"),(3,"trupti"),(4,"sayali");
select * from t1;

create table t2(id int, name char(20));
insert into t2 values(0,"priyanka"),(1,"sarthak"),(3,"trupti"),(4,"gauri");
select * from t2;

select id from t1 union select id from t2;
select id from t1 union all select id from t2;

select id from t1
where name="chetana"
union
select id from t2
where name="trupti";

