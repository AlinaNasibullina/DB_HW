-- ������� 2
drop database if exists example;
drop database if exists sample;
create database example;

use example;

create table users (
	id INT primary key not null auto_increment,
	name VARCHAR(255)
);

-- ������� 3
mysqldump example > c:\users\�����\dumps\example1.sql;

create database sample;

mysql sample < c:\Users\�����\example1.sql;

-- ������� 4

mysqldump mysql help_keyword -w"help_keyword_id<101" > c:\users\�����\dumps\help_keyword.sql;