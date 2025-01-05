select * from authors;

-- Top 5 nationality with the most authors registered
select nationality_author, count(*) 
from authors group by nationality_author order by count(*) desc
limit 5;

-- Authors' names that start with A
select name_author from authors where name_author like 'a%';

-- Authors' names who were born after 1990
select name_author, DOB from authors where DOB > '1990-01-01';

-- Oldest author
select name_author, DOB from authors where DOB = (select min(DOB) from authors);

-- Youngest author
select name_author, DOB from authors where DOB = (select max(DOB) from authors);