
-- The complete information about books
select name_book, name_author, name_category, price, type_book, date_include
from books
inner join authors on books.id_author = authors.id_author
inner join category on books.id_category = category.id_category;

-- The complete information about authors
select name_book, name_author, name_category, nationality_author, DOB as DOB_author
from books
inner join authors on books.id_author = authors.id_author
inner join category on books.id_category = category.id_category;

-- The complete information about sales
select name_book, name_customer, price, date_sale
from sales
inner join books on books.id_book = sales.id_book
inner join customer on customer.id_customer = sales.id_customer;

-- 5 Bestselling books
select name_book, count(*)
from sales
inner join books on books.id_book = sales.id_book
inner join customer on customer.id_customer = sales.id_customer
group by name_book
order by count(*) desc
limit 5;

-- Authors with the most books registered
select name_author, count(*) from books inner join authors on books.id_author = authors.id_author
group by name_author
order by count(*) desc;

-- Categorys with the most books registered
select name_category, count(*) from books inner join category on books.id_category = category.id_category
group by name_category
order by count(*) desc;

-- Name of the largest buyer
select name_customer, count(*) from sales inner join customer on sales.id_customer = customer.id_customer
group by name_customer
order by count(*) desc;