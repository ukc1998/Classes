show databases
use ineuron
show tables
select * from cust_details

alter table CUST_DETAILS
add age int;

select * from cust_details

set sql_safe_updates = 0;

UPDATE cust_details set age = 35 where gender = "M"
UPDATE cust_details set age = 30 where gender = "F"

select * from cust_details

alter table CUST_DETAILS
drop column age

select * from cust_details

alter table CUST_DETAILS
add age int;

set sql_safe_updates = 0;

UPDATE cust_details set age = 35 where gender = "M"
UPDATE cust_details set age = 30 where gender = "F"

select * from student
show tables

select * from student
drop table student

show tables

select * from student
drop table student
show tables
select * from student

drop table student

show tables

create database imdb
use imdb
show tables
select * from person

create table m_cast(
index_1 varchar(1),
mid varchar(255),
pid varchar(255),
id varchar(1))

show tables

select * from m_cast

use ineuron

show tables

select * from movie

use ineuron

select * from cust_details

#GROUPBY FUNCTION USE
-- let's say we have to find total number of counts of gender i.e. how many males and how many females

select gender, count(*) from cust_details
group by gender

select max(cust_id) from cust_details

select avg(age) from cust_details

select gender, count(*) from cust_details
group by gender order by gender asc

select gender, count(*) from cust_details
group by gender order by gender desc

select gender, count(*) from cust_details
group by gender order by count(*) desc

select gender, count(*) from cust_details
group by gender order by count(*) asc

select gender, geography, count(*) from cust_details
group by gender, geography

select gender, geography, count(*) from cust_details
group by gender, geography order by count(*) desc

select gender, geography, count(*) from cust_details
group by gender, geography order by geography desc

select gender, geography, count(*) from cust_details
group by gender, geography order by geography asc limit 5

select count(*) from cust_details where age > 35

select count(*) from cust_details where age < 30

select count(*) from cust_details where age <36

select count(*) from cust_details where age <35

select gender, geography, count(*) from cust_details
group by gender, geography order by geography asc

-- let's say we want to see those records whose count is = 2 in the above table
-- let's try if it is possible by the use of where clause or not 

select gender, geography, count(*) from cust_details where count(*) = 2
group by gender, geography order by geography asc

-- here comes into the picture, having clause

select gender, geography, count(cust_id) from cust_details
group by gender, geography having count(cust_id) = 2

"""order should be like:
select
from
where
group by
having
order by
limit"""

""" select * from table name where column name operator values
group by having condition order by limit"""

select concat(cust_name, ' ', geography) as full_data from cust_details

select * from cust_details 

select full_data from cust_details

select substr(cust_name,3, 2) from cust_details
select upper(cust_name) from cust_details
select * from cust_details
select lower(cust_name) from cust_details
select char_length(cust_name) as chl from cust_details
select mid(cust_name,3,2) from cust_details


CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int)

select * from transaction_details

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select * from transaction_details

select datediff(sysdate(), order_date) as datediff_today, prod_name, prod_id, order_date from transaction_details
select datediff('2022-02-04', order_date) as datediff_today, prod_name, prod_id, order_date from transaction_details
select date_format(order_date, "%Y") from transaction_details;
select date_format(order_date, "%Y%M%D") from transaction_details;
SELECT DAY("2017-06-15");
SELECT ADDDATE("2022-02-04", INTERVAL -9 DAY);
SELECT ADDDATE("2022-02-04", INTERVAL +9 DAY);
SELECT ADDDATE("2022-02-04", INTERVAL +9 MONTH);
SELECT ADDDATE("2022-02-04", INTERVAL +270 DAY)


select * from cust_details where cust_name like 'a%'

select * from cust_details where cust_name REGEXP '^a'


select * from cust_details where cust_name REGEXP "[ay]";
select * from cust_details where cust_name REGEXP "[iy]";

select * from cust_details where cust_name REGEXP "[ty]";
select * from cust_details where cust_name like '%t%' or cust_name like '%y%';

select * from cust_details where cust_name REGEXP "[t-z]";
show databases
use ineuron
show tables
select * from student
update student set "ï»¿id" = "id"

drop table student

select * from student
#1. List the first initial of all the students coming from YMT

select left(name, 1) from student where dcode = "YMT"

select SUBSTR(name, 1,1) from student where  dcode = 'YMT'

show databases
use ineuron
show tables
select * from cust_details

alter table CUST_DETAILS
add age int;

select * from cust_details

set sql_safe_updates = 0;

UPDATE cust_details set age = 35 where gender = "M"
UPDATE cust_details set age = 30 where gender = "F"

select * from cust_details

alter table CUST_DETAILS
drop column age

select * from cust_details

alter table CUST_DETAILS
add age int;

set sql_safe_updates = 0;

UPDATE cust_details set age = 35 where gender = "M"
UPDATE cust_details set age = 30 where gender = "F"

select * from student
show tables

select * from student
drop table student

show tables

select * from student
drop table student
show tables
select * from student

drop table student

show tables

create database imdb
use imdb
show tables
select * from person

create table m_cast(
index_1 varchar(1),
mid varchar(255),
pid varchar(255),
id varchar(1))

show tables

select * from m_cast

use ineuron

show tables

select * from movie

use ineuron

select * from cust_details

#GROUPBY FUNCTION USE
-- let's say we have to find total number of counts of gender i.e. how many males and how many females

select gender, count(*) from cust_details
group by gender

select max(cust_id) from cust_details

select avg(age) from cust_details

select gender, count(*) from cust_details
group by gender order by gender asc

select gender, count(*) from cust_details
group by gender order by gender desc

select gender, count(*) from cust_details
group by gender order by count(*) desc

select gender, count(*) from cust_details
group by gender order by count(*) asc

select gender, geography, count(*) from cust_details
group by gender, geography

select gender, geography, count(*) from cust_details
group by gender, geography order by count(*) desc

select gender, geography, count(*) from cust_details
group by gender, geography order by geography desc

select gender, geography, count(*) from cust_details
group by gender, geography order by geography asc limit 5

select count(*) from cust_details where age > 35

select count(*) from cust_details where age < 30

select count(*) from cust_details where age <36

select count(*) from cust_details where age <35

select gender, geography, count(*) from cust_details
group by gender, geography order by geography asc

-- let's say we want to see those records whose count is = 2 in the above table
-- let's try if it is possible by the use of where clause or not 

select gender, geography, count(*) from cust_details where count(*) = 2
group by gender, geography order by geography asc

-- here comes into the picture, having clause

select gender, geography, count(cust_id) from cust_details
group by gender, geography having count(cust_id) = 2

"""order should be like:
select
from
where
group by
having
order by
limit"""

""" select * from table name where column name operator values
group by having condition order by limit"""

select concat(cust_name, ' ', geography) as full_data from cust_details

select * from cust_details 

select full_data from cust_details

select substr(cust_name,3, 2) from cust_details
select upper(cust_name) from cust_details
select * from cust_details
select lower(cust_name) from cust_details
select char_length(cust_name) as chl from cust_details
select mid(cust_name,3,2) from cust_details


CREATE table transaction_details(
prod_name varchar(50),
prod_id int NOT NULL,  
order_date datetime,
amount int)

select * from transaction_details

INSERT INTO transaction_details VALUES ('Motorola', 1, '2020-01-01', 10000);
INSERT INTO transaction_details VALUES ('Canon Camera', 2, '2020-02-01', 60000);
INSERT INTO transaction_details VALUES ('Mousepad', 3, '2020-03-01', 2000);
INSERT INTO transaction_details VALUES ('Razer', 4, '2020-04-01', 3000);
INSERT INTO transaction_details VALUES ('ABC', 5, '2020-05-01', 1200);
INSERT INTO transaction_details VALUES ('DEF', 6, '2020-06-01', 2500);
INSERT INTO transaction_details VALUES ('XYZ', 7, '2020-07-01', 90000);
INSERT INTO transaction_details VALUES ('ABBBB', 8, '2020-08-01', 123100);
INSERT INTO transaction_details VALUES ('ASADASD', 9, '2020-09-01', 1500);
INSERT INTO transaction_details VALUES ('Pencil', 10, '2020-10-01', 10);

select * from transaction_details

select datediff(sysdate(), order_date) as datediff_today, prod_name, prod_id, order_date from transaction_details
select datediff('2022-02-04', order_date) as datediff_today, prod_name, prod_id, order_date from transaction_details
select date_format(order_date, "%Y") from transaction_details;
select date_format(order_date, "%Y%M%D") from transaction_details;
SELECT DAY("2017-06-15");
SELECT ADDDATE("2022-02-04", INTERVAL -9 DAY);
SELECT ADDDATE("2022-02-04", INTERVAL +9 DAY);
SELECT ADDDATE("2022-02-04", INTERVAL +9 MONTH);
SELECT ADDDATE("2022-02-04", INTERVAL +270 DAY)


select * from cust_details where cust_name like 'a%'

select * from cust_details where cust_name REGEXP '^a'


select * from cust_details where cust_name REGEXP "[ay]";
select * from cust_details where cust_name REGEXP "[iy]";

select * from cust_details where cust_name REGEXP "[ty]";
select * from cust_details where cust_name like '%t%' or cust_name like '%y%';

select * from cust_details where cust_name REGEXP "[t-z]";
show databases
use ineuron
show tables
select * from student
update student set "ï»¿id" = "id"

drop table student

select * from student
#1. List the first initial of all the students coming from YMT

select left(name, 1) from student where dcode = "YMT"
#2. Display the entire name but the last character of students

select substring(name,1, char_length(name) -1) from student

#3. Display the last two characters of the students’ name 

select substring(name, char_length(name)-1, char_length(name)) from student

#4. Do the second question using Mid function

select mid(name,1,char_length(name) -1) from student

#5. Do the third question using Mid function

select mid(name, char_length(name) -1, 2 ) from student

#5. Show the fullname in Upper Case.


#6. Select students whose name contain a single “e”.

select name from student where name like "%e%"

select name from student where name REGEXP "[e]"