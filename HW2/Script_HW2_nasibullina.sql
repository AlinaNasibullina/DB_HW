-- Задание 2
drop database if exists example;
drop database if exists sample;
create database example;

use example;

create table users (
	id INT primary key not null auto_increment,
	name VARCHAR(255)
);

-- Задание 3
mysqldump example > c:\users\Алина\dumps\example1.sql;

create database sample;

mysql sample < c:\Users\Алина\example1.sql;

-- Задание 4

mysqldump mysql help_keyword -w"help_keyword_id<101" > c:\users\Алина\dumps\help_keyword.sql;