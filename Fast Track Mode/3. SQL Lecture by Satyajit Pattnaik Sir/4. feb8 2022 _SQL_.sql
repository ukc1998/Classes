create database customer
show databases
use customer
show tables

## importing table WA_Fn-UseC_-Telco-Customer-Churn
select * from cust
##Q1 --> Find the list of customers who are having total charges greater than the average total charges

select avg(TotalCharges) from cust 
 '2279.734303563826'
 
 select count(*) from cust where Totalcharges > '2279.734303563826'
'2649'

select count(*) from cust
'7043'

#applying nesting using above steps
select count(*) from cust where Totalcharges > ( select avg(TotalCharges) from cust)
'2649'

select * from cust where Totalcharges > ( select avg(TotalCharges) from cust)

select customerId, gender, seniorCitizen, partner from cust where totalCharges > (select avg(totalCharges) from cust)

select * from cust


## Q2 -> Find the count of customers who has a greater totalCharges than customer_id: '9237-HQITU'

select count(*) from cust where totalCharges > (select totalcharges from cust where customerid = '9237-HQITU')
'6037'

select * from cust where totalCharges > (select totalCharges from cust where customerId = '9237-HQITU')

## importing classicmodels database from mysampledatabase

use classicmodels

show tables

select * from orderdetails limit 5 
---> orderNumber, productCode, quantityOrdered, priceEach, orderLineNumber

select * from products

select * from products limit 5 
--> productCode, productName, productLine, productVendor, productDesc, quantityinstock, buyPrice, MSRP

## Q3 --> We want the product code, name & mrp/msrp of products whose price of each product is less than 200$

select productCode, productName, MSRP
from products
where productCode in
(select productCode from orderdetails where priceEach < 200)

# in operator means any value which fall inside a particular column

create database fun

use fun

create table players 
(
player_id int,
player_name varchar(25),
country varchar(25),
goals int
)

select * from players

INSERT INTO players values (901, 'Sunil', 'India', 5);
INSERT INTO players values (902, 'Daniel', 'England', 12);
INSERT INTO players values (903, 'Christiano', 'Portugal', 15);
INSERT INTO players values (904, 'Zlatan', 'Sweden', 12);
INSERT INTO players values (905, 'Rodriguez', 'Columbia', 11);
INSERT INTO players values (906, 'Henry', 'England', 10);
INSERT INTO players values (907, 'Nani', 'Portugal', 2);
INSERT INTO players values (908, 'Neymar', 'Brazil', 14);
INSERT INTO players values (909, 'Jindal', 'Iran', 5);
INSERT INTO players values (910, 'Martial', 'France', 9);

select * from players

## Q--Return the list of players that have scored greater than 6 goals in the tournament

select * from players where goals > 6

delimiter &&
create procedure top_players()
begin
select player_name, country, goals from players where goals > 6;
end &&
delimiter ;

call top_players()

### STORED PROCEDURES USING 'IN' Keyword

# Lets create a procedure which returns the top players based on goals: 

delimiter //
create procedure top_players_sort_by_goals(IN var int)
begin
select player_name, country, goals from players order by goals desc limit var;
end //
delimiter ;

# Q-- Top 5 players based on goals
select * from players order by goals desc limit 5

select player_name, country, goals from players order by goals desc limit 5

## second method

call top_players_sort_by_goals(5

### how to update something using stored procedure
### select * from players --> ('PlayerName', number)
### Update players set goals = ? where player_name = ?

delimiter //
create procedure update_goals(IN var2 varchar(25),IN var int)
begin
update players set goals = var where player_name = var2;
end //
delimiter ;

select * from players # rightnow ronaldo is having 15 goals
set sql_safe_updates = 0;
call update_goals('Christiano', 25)
select * from players


### STORED PROCEDURES USING 'OUT' Keyword 
-- it is basically used when we want some numbers as output

delimiter //
create procedure player_count(OUT total_players int)
begin
select count(*) from players into total_players;
end //
delimiter ;

call player_count(@total_count)

select @total_count as Total_count


delimiter //
create procedure player_count_portugal(OUT total_players int)
begin
select count(*) from players where country = 'Portugal' into total_players;
end //
delimiter ;

call player_count_portugal(@total_count)

select @total_count as Total_count

delimiter //
create procedure player_count_country(IN var varchar(25), OUT total_players int)
begin
select count(*) from players where country = var into total_players;
end //
delimiter ;

call player_count_country('India', @total_count)
select @total_count as Total_count

## views

use classicmodels

show tables

select * from customers where country = 'USA'

select count(*) from customers where country = 'USA'

create table cust_details as
select * from customers where country = 'USA'

select * from cust_details 

##creating view

create view cust_details_v as
select * from customers where country = 'USA'

select * from cust_details_v

update cust_details set customernumber = 1122 where customernumber = 112
select * from cust_details

select * from cust_details_v

 

# another example for view

select * from products limit 4

select * from productlines limit 4

create view prod_description as
(
select prd.productName, prd.quantityinstock, prd.msrp, pl.textdescription
from products prd inner join productlines pl
on prd.productline = pl.productline
)

select * from prod_description

show full tables where table_type = 'VIEW'

drop view cust_details_v

drop view prod_description

### windows functionss --> to solve analytical problems generally


# Row_number() → Gives a sequential integer to every row within its partition

select * from products

#Q---> Find combined msrp for each productLine

select * from products

select productLine, sum(msrp) over (partition by productLine) as total_msrp
from products

select productLine, sum(msrp) from products group by productLine

select a.productLine, a.*, sum(a.msrp) over (partition by a.productLine) as total_msrp
from products a # through this, we get an extra column totalmsrp using window function that is not possible by using group by 

##Row number --> 

select row_number() over (order by msrp) as row_num, productLine, msrp from products order by msrp 

##Rank() functions → Ranking records

create table demo
(
var_a int)

select * from demo

INSERT INTO DEMO VALUES (101), (102), (103), (103), (104), (105), (106), (106)

select var_a,
rank() over (order by var_a) as test_rank from demo

##First_value() functions → Returns the value of the specific expression with respect to first row in the window frame


select max(creditLimit) from customers

select contactFirstName from customers where creditLimit = (select max(creditLimit) from customers)

select contactFirstName from customers order by creditLimit desc

## Q--->Who has the highest credit limit --> name

select contactFirstName, city, state, country, creditLimit, 
first_value(contactFirstName) over (order by creditLimit desc) as highest_creditlimit from customers

#Q====>Who has the highest credit limit per each country

select contactFirstName, city, state, country, creditLimit, 
first_value(contactFirstName) over (partition by country order by creditLimit desc) as highest_creditlimit from customers