create database library;

create table books (
id_book int auto_increment primary key,
name_book varchar(100),
pages int,
id_author int,
id_category int,
price float,
type_book enum("Physical-Book", "E-Book") Not null,
date_include TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

create table authors (
id_author int auto_increment primary key,
name_author varchar(100),
nationality_author varchar(100),
DOB date
);

create table category (
id_category int auto_increment primary key,
name_category varchar(100)
);

create table customer (
id_customer int auto_increment primary key,
name_customer varchar(100),
email varchar(100),
phone varchar(100),
address varchar(100)
);

create table sales (
id_sale int auto_increment primary key,
id_book int,
id_customer int,
date_sale date
);




