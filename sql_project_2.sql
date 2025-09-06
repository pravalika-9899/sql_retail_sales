
-- sql Retasil sales analaysis -p
create database sql_project_2;
use sql_project_2;
create table retail_sales(
transactions_id	 int primary key,
sale_date  date,
sale_time time,
customer_id int,
gender	varchar(15),
age	int,
category varchar(15),	
quantiy	int,
price_per_unit float,	
cogs float,	
total_sale float);
SELECT * FROM retail_sales;
select count(*) from retail_sales;
select * from retail_sales 
where transactions_id is null;
select * from retail_sales 
where sale_date is null;
select * from retail_sales 
where sale_time is null;
select * from retail_sales
where transactions_id is null 
or sale_date is null
or sale_time is null
or gender is null
or age is null
or category is null
or quantity is null
or cogs is null
or total_sales is null;
--  data Exploration
-- how many sales we have ?
select count(*) as total_sale from retail_sales;
-- how many unique customers we have ?
select count(distinct customer_id) as total_sale from retail_sales;
select distinct category from retail_sales;
-- data analysis & business
-- 1.write a sql query to retrieve all columns for sales made on '2022-11-05'
select * from retail_sales where sale_date ='2022-11-05';
-- 2.write a sql query to retrieve all transactions where the category is
--  'Clothing' and the quantity  sold is more than 4 in the month of nov-2022
select * from retail_sales
 where category='Clothing'
 and year(sale_date)= 2022
 and month(sale_date)=11
  and quantiy >= 4;
  -- 3.write a sql quary to calculate the total sales(total_sale) for each category
  select  category,
  sum(total_sale)  as net_sale,count(*) as total_orders 
  from retail_sales group by category;
  -- 4.write asql query to find the average age of customers 
  -- who purchased items from the 'beauty' category
  select round(avg(age),2)  
  from retail_sales where category='beauty';
  -- 5 .write a sql to find all transactions 
  -- where the total_sale is greater than 1000
  select * from retail_sales
  where total_sale > 1000;
  -- 6. write a sql query to find the total numbernof transactions (transaction_id)
 --  made by each gender in each category?
 select category,gender,count(*) as total_trans 
 from retail_sales
  group by category,gender order by 1;
  -- 7. write a sql to calculate the average sale for each month.
  -- find out best selling month in each year
   select  year(sale_date) as year,month(sale_date) as month,avg(total_sale) as avg_sale
  from  retail_sales group by 1,2
  order by 3 desc 
  limit 2;
  -- 8. write a sql query to find the top 5 customers
  -- based on the highest total sales
  select customer_id,
  sum(total_sale) as total_sale
  from retail_sales group by 1
  order by 2 desc
  limit 5;
-- 9. write a sql query to find  the number of unique customers
-- who purchased items for each category.
   select category,count( distinct customer_id)
   as cnt_unq_custmer from retail_sales group by category;
 -- 10.write a sql query to craete each shift and number 
 -- of orders(example morning<=12, afternoon between 12
 -- &17 ,evening>17)
 select extract(hour from current_time);
 with hourly_sale as(
 select *,
    case
         when extract(hour from sale_time)<12 then 'morning' 
         when extract(hour from sale_time) between 12 and 17 then 'afternoon'
         else 'evening' 
         end as shift
         from retail_sales
) select shift,
count(*) as total_sale
from hourly_sale
group by shift ;
-- end ---



  
  
 
 
 



