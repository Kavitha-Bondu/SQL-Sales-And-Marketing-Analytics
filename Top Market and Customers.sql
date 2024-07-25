#Top n customers by net sales for a given year
select 
c.customer,ns.customer_code, 
round(sum(net_sales)/1000000,2) as net_sales_mln
from gdb0041.net_sales ns
join dim_customer c
on c.customer_code=ns.customer_code
where fiscal_year=2021
group by c.customer
order by net_sales_mln desc
limit 5;

#Top n products by net sales for a given year
select 
product, 
round(sum(net_sales)/1000000,2) as net_sales_mln
from gdb0041.net_sales 
where fiscal_year=2021
group by product
order by net_sales_mln desc
limit 5;





