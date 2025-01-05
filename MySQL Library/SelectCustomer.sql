select * from customer;

-- Customers' living in NY
select * from customer where address like '%NY';

-- Customers' living in Avenue
select * from customer where address like '%Avenue%';

-- Name with the most characters
select name_customer, char_length(name_customer) from customer where char_length(name_customer) 
= (select max(char_length(name_customer)) from customer);

-- Name with the fewest characters
select name_customer, char_length(name_customer) from customer where char_length(name_customer) 
= (select min(char_length(name_customer)) from customer);

