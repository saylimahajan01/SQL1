use classicmodels;
/*1.List the customers in the United States with a credit limit higher than \$1000.*/
select * from customers
where country="USA" and creditlimit>1000;

/*List the 5 most expensive products from the "Planes" product line*/
select * from products
where productline="planes"
order by buyprice desc limit 5;

select MSRP from products
where MSRP between 101 and 106;


