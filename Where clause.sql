show databases;
use hr_analytics;
select * from countries
Where country_name="Brazil";
/*</>*/
select * from countries
where region_id>1;

select * from countries
where region_id<4;

/*(<>/!)*/

select country_id, country_name,region_id from countries where region_id<>1;
select country_id, country_name,region_id from countries where region_id!=2;

/*Between*/
select country_name, region_id from countries where region_id between 1 and 4;

/*Not Between*/
select country_name, region_id from countries where region_id not between 1 and 3;

/*In*/
select region_id from countries where region_id in(2,3);

/*Not In*/
select country_name, region_id from countries where region_id not in(2,3);