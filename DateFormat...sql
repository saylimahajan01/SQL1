/*QUESTION: List the largest single payment done by every customer in the year 2004, ordered by the transaction value 
(highest to lowest).*/
use classicmodels;
select * from customers;
select * from payments;
select customerNumber,max(amount) as largestpayment,count(checkNumber) as no_of_order from payments
where year(paymentDate)=2004
group by checkNumber
order by largestpayment desc;

/*QUESTION: Show the total payments received month by month for every year.*/
select year(paymentDate) as year,
month(paymentDate) as month,
round(sum(amount),1) as totalpayment
from payments
group by year, month
order by year, month;

/*QUESTION: For the above query, format the amount properly with a dollar symbol and comma separation (e.g $26,267.62), and also show the month as a string.*/
select year(paymentDate) as year,
date_format(paymentDate,"%b%") As monthName,
concat("$",format(sum(amount),1)) as totalpayments
from payments
group by year,month(paymentDate),monthname
order by year, month(paymentDate);

create table demo(name char(25),age int);
insert into demo(name,age) values("chetna",26),("gauri",22);
select * from demo;
update demo set name="trupti",age=29
where name="trupti";
delete from demo where name="trupti";