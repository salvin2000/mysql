create database pop;
create table country(id int primary key ,country_name varchar(20) unique,population int ,area varchar(30));
create table persons(id int primary key, fname varchar(20),lname varchar(20),population int ,rating float,country_id int,country_name varchar(30),foreign key (country_id) references country(id));
insert into country values(001,'india',5200403,'south east asia');
insert into country values(002,'usa',1942155,'north america');
insert into country values(003,'uk',1424511,'europe');
insert into country values(004,'australia',900003,'south');
insert into country values(005,'canada',3467064,'north america');
insert into country values(006,'germany',888403,'europe');
insert into country values(007,'france',930403,'europe');
insert into country values(008,'russia',3222210,' europe');
insert into country values(009,'china',4123133,'south east asia');
insert into country values(010,'',3019314,'south america');


select * from country;

insert into persons values(101,'salvin','cheriyan babu',5200403,9.6,001,'india');
insert into persons values(102,'john','alex',1942155,4.7,002,'usa');
insert into persons values(103,'robert','tom',1424511,7.3,003,'uk');
insert into persons values(104,'emily','clark',900003,1.9,004,'australia');
insert into persons values(105,'alvin','luke',3467064,4.9,005,'canada');
insert into persons values(106,'christopher','nolan',888403,8.1,006,'germany');
insert into persons values(107,'elisa','jenson',930403,3.9,007,'france');
insert into persons values(108,'king','martin',3222210,7.9,008,'russia');
insert into persons values(109,'xi','tang',4123133,3,009,'china');
insert into persons values(110,'robert','henry',3019314,5,010,'');
INSERT INTO Persons VALUES (111, 'Ethan', 'Hunt', 1500000, 8.5, 001, 'India');
INSERT INTO Persons VALUES (112, 'Aarav', 'Mehta', 2500000, 7.6, 002, 'USA');
INSERT INTO Persons VALUES (113, 'Xiao', 'Li', 4100000, 9.1, 009, 'China');
INSERT INTO Persons VALUES (114, 'Charlotte', 'Baker', 900000, 6.3, 004, 'Australia');
INSERT INTO Persons VALUES (115, 'Amelia', 'Green', 3400000, 8.0, 005, 'Canada');
INSERT INTO Persons VALUES (116, 'Liam', 'Williams', 830000, 7.9, 006, 'Germany');
INSERT INTO Persons VALUES (117, 'Isabelle', 'Smith', 920000, 6.7, 007, 'France');
INSERT INTO Persons VALUES (118, 'Dmitry', 'Ivanov', 3200000, 8.3, 008, 'Russia');
INSERT INTO Persons VALUES (119, 'Mei', 'Chen', 4200000, 8.1, 009, 'China');
INSERT INTO Persons VALUES (120, 'Oliver', 'Brown', 3000000, 7.5, 003, 'UK');
INSERT INTO Persons VALUES (121, 'Sophia', 'Morris', 1600000, 8.9, 001, 'India');
INSERT INTO Persons VALUES (122, 'Arjun', 'Kumar', 2400000, 7.8, 002, 'USA');
INSERT INTO Persons VALUES (123, 'Ying', 'Fang', 4100000, 8.4, 009, 'China');
INSERT INTO Persons VALUES (124, 'William', 'Taylor', 880000, 6.9, 004, 'Australia');
INSERT INTO Persons VALUES (125, 'Emma', 'Davis', 3300000, 7.3, 005, 'Canada');
INSERT INTO Persons VALUES (126, 'Mia', 'Clarkson', 890000, 8.2, 006, 'Germany');
INSERT INTO Persons VALUES (127, 'Léa', 'Moreau', 910000, 6.6, 007, 'France');
INSERT INTO Persons VALUES (128, 'Sergei', 'Petrov', 3100000, 8.7, 008, 'Russia');
INSERT INTO Persons VALUES (129, 'Chen', 'Zhang', 4200000, 8.0, 009, 'China');
INSERT INTO Persons VALUES (130, 'James', 'Hughes', 3100000, 7.4, 003, 'UK');


select * from persons;

select distinct country_name from Persons;
select fname as first_name,lname as last_name from persons;
select * from persons where rating>6;
select country_name country,population from country where population>1000000;
select * from persons where country_name='usa' or rating>6.5;
select * from persons where country_name in ('canada','usa','uk');
select * from persons where country_name not in ('india','australia');
select * from country where population between 500000 and 1000000;
select * from country where country_name not like 'c%';