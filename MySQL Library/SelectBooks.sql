select * from books;

-- Book with the most pages
select name_book, pages from books where pages = (select max(pages) from books);

-- Average book price
select round(avg(price)) from books;

-- Books above the average price
select name_book, price from books where pages >= (select round(avg(price)) from books)
order by price desc;

-- Book with the most price
select name_book, price, type_book from books where price = (select max(price) from books);

-- Book with the lowest price
select name_book, price, type_book from books where price = (select min(price) from books);

-- Count Type_book
select type_book, count(*) from books group by type_book order by count(*) desc;


