select * from sales;

-- ID of the largest buyer
select id_customer, count(*) from sales 
group by id_customer
order by count(*) desc;

-- ID of the largest book sold
select id_book, count(*) from sales 
group by id_book
order by count(*) desc;

-- Sales in January
select count(*) from sales where date_sale like '2024-01%';

-- Sales in February
select count(*) from sales where date_sale like '2024-02%';

-- Sales in March
select count(*) from sales where date_sale like '2024-03%';

-- Sales in April
select count(*) from sales where date_sale like '2024-04%';

-- Sales in May
select count(*) from sales where date_sale like '2024-05%';

-- Sales in June
select count(*) from sales where date_sale like '2024-06%';

-- Sales in July
select count(*) from sales where date_sale like '2024-07%';

-- Sales in August
select count(*) from sales where date_sale like '2024-08%';

-- Sales in Setember
select count(*) from sales where date_sale like '2024-09%';

-- Sales in October
select count(*) from sales where date_sale like '2024-10%';

-- Sales in November
select count(*) from sales where date_sale like '2024-11%';

-- Sales in December
select count(*) from sales where date_sale like '2024-12%';


