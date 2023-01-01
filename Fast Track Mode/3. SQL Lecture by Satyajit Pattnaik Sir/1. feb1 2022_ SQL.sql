select * from ineuron.dep
use ineuron;
show tables
select * from ineuron.emp

create table CUST_DETAILS (
cust_name varchar(25),
cust_id int, 
gender varchar(1),
geography varchar(10),
churn int
 )
 
 select * from CUST_DETAILS
 
 INSERT INTO CUST_DETAILS VALUES ('Satyajit', 1, 'M', 'Odisha', 0);
 INSERT INTO CUST_DETAILS VALUES ('Rani', 2, 'F', 'MP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Hema', 3, 'F', 'UP', 1);
 INSERT INTO CUST_DETAILS VALUES ('Raj', 4, 'M', 'AP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Kumar', 5, 'M', 'Karnataka', 1);
 
 select * from CUST_DETAILS
 
  select * from CUST_DETAILS where gender = 'F'
  
INSERT INTO CUST_DETAILS VALUES ('Shanti', 5, 'F', 'Delhi', 0);
INSERT INTO CUST_DETAILS VALUES ('Sapna', 5, 'F', 'Jammu', 1);

 select * from CUST_DETAILS
 
 create table CUST_DETAILS_PK (
cust_name varchar(25),
cust_id int NOT NULL, 
gender varchar(1),
geography varchar(10),
churn int,
primary key (cust_id)
 )
 
 select * from cust_details_pk
 
INSERT INTO CUST_DETAILS_PK VALUES ('Satyajit', 1, 'M', 'Odisha', 0);
 INSERT INTO CUST_DETAILS_PK VALUES ('Rani', 2, 'F', 'MP', 0);
 INSERT INTO CUST_DETAILS_PK VALUES ('Hema', 3, 'F', 'UP', 1);
 INSERT INTO CUST_DETAILS_PK VALUES ('Raj', 4, 'M', 'AP', 0);
 INSERT INTO CUST_DETAILS_PK VALUES ('Kumar', 5, 'M', 'Karnataka', 1);
 
  select * from cust_details_pk
 
 INSERT INTO CUST_DETAILS_PK VALUES ('Shanti', 5, 'F', 'Delhi', 0);
 INSERT INTO CUST_DETAILS_PK VALUES ('Sapna', 5, 'F', 'Jammu', 1);
 
  select * from dep
  
    select * from emp
    
    INSERT INTO emp VALUES (92701, 'Satyajit', 'Something', 1)
    
 select * from dep
 
INSERT INTO dep VALUES (1, 'CSE', 'Something');
INSERT INTO dep VALUES (2, 'MECH', 'Something');
INSERT INTO dep VALUES (3, 'EEE', 'Something');
INSERT INTO dep VALUES (4, 'CIVIL', 'Something');

 select * from dep
 
INSERT INTO emp VALUES (92701, 'Satyajit', 'Something', 1)
select * from emp

INSERT INTO emp VALUES (92702, 'Hema', 'Something', 11)

 select * from cust_details
 
  delete from cust_details
  
select * from cust_details

INSERT INTO CUST_DETAILS VALUES ('Satyajit', 1, 'M', 'Odisha', 0);
 INSERT INTO CUST_DETAILS VALUES ('Rani', 2, 'F', 'MP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Hema', 3, 'F', 'UP', 1);
 INSERT INTO CUST_DETAILS VALUES ('Raj', 4, 'M', 'AP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Kumar', 5, 'M', 'Karnataka', 1);
 
 select * from cust_details
 
 select * from cust_details where geography = "Odisha"
 
 select * from cust_details where cust_id > 3
 
 INSERT INTO CUST_DETAILS VALUES ('Akshay', 6, 'M', 'Odisha', 0);
 INSERT INTO CUST_DETAILS VALUES ('Shikhar', 7, 'M', 'MP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Pritesh', 8, 'M', 'UP', 1);
 INSERT INTO CUST_DETAILS VALUES ('Nithyashree', 9, 'F', 'AP', 0);
 INSERT INTO CUST_DETAILS VALUES ('Rahul', 10, 'M', 'Karnataka', 1);
 
 select * from cust_details
 
 select *  from CUST_DETAILS where cust_id > 3 and gender = 'F'

select *  from CUST_DETAILS where cust_name like 'A'

select *  from CUST_DETAILS where cust_name like 'A%a'

select *  from CUST_DETAILS where cust_name like 'N'

select *  from CUST_DETAILS where cust_name like 'N%'

select *  from CUST_DETAILS where cust_name like '%e'

select *  from CUST_DETAILS where cust_name like '%E'

select *  from CUST_DETAILS where cust_name like '%e%'

#i am writing a single line comment.

"""i am writing a multiline comment"""

create table empinfo(
firstname varchar(10),
lastname varchar(10),
id int,
age int,
city varchar(20),
state varchar(20)
)

select * from empinfo

INSERT into empinfo values('John','Jones',99980,45,'Payson','Arizona');

select * from empinfo


INSERT into empinfo values('Eric','Edwards',88232,32,'San Diego','California');
INSERT into empinfo values('Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
INSERT into empinfo values('Ginger','Howell',98002,42,'Cottonwood','Arizona');
INSERT into empinfo values('Sebastian','Smith',92001,23,'Gila Bend','Arizona');
INSERT into empinfo values('Gus','Gray',22332,35,'Bagdad','Arizona');
INSERT into empinfo values('Mary Ann','May',32326,52,'Tucson','Arizona');
INSERT into empinfo values('Erica','Williams',32327,60,'Showlow','Arizona');
INSERT into empinfo values('Leroy','Brown',32380,22,'Pine Top','Arizona');
INSERT into empinfo values('Elroy','Cleaver',32382,22,'Globe','Arizona');

select * from empinfo

delete * from empinfo

delete from empinfo

INSERT into empinfo values('John','Jones',99980,45,'Payson','Arizona');

select * from empinfo

INSERT into empinfo values('Eric','Edwards',88232,32,'San Diego','California');
INSERT into empinfo values('Mary Ann','Edwards',88233,32,'Phoenix','Arizona');
INSERT into empinfo values('Ginger','Howell',98002,42,'Cottonwood','Arizona');
INSERT into empinfo values('Sebastian','Smith',92001,23,'Gila Bend','Arizona');
INSERT into empinfo values('Gus','Gray',22332,35,'Bagdad','Arizona');
INSERT into empinfo values('Mary Ann','May',32326,52,'Tucson','Arizona');
INSERT into empinfo values('Erica','Williams',32327,60,'Showlow','Arizona');
INSERT into empinfo values('Leroy','Brown',32380,22,'Pine Top','Arizona');
INSERT into empinfo values('Elroy','Cleaver',32382,22,'Globe','Arizona');

select * from empinfo

select firstname , lastname , AGE from empinfo WHERE AGE > 30;

select firstname , lastname , AGE from empinfo WHERE firstname like "j%";

select * from empinfo WHERE firstname like "j%";


select count(*) from empinfo


select count(*) as count_records from empinfo where age > 30

select count(*) as records_count from empinfo where age > 30


select firstname as FN, lastname as LN from empinfo emp WHERE emp.AGE > 30;


select firstname as FN, lastname as LN, AGE as a from empinfo emp WHERE emp.AGE > 30;
