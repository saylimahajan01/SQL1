use hr_analytics;


/*order by/limit*/
select * from employees
order by first_name;

select * from employees order by first_name desc limit 2;

select * from employees
order by employee_id limit 4;
