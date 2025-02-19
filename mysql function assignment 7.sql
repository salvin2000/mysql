create database Country01;
use Country01;
CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(50) NOT NULL, Population BIGINT NOT NULL, Area FLOAT NOT NULL );
INSERT INTO Country VALUES (1, 'India', 1407563842, 3287263);
INSERT INTO Country VALUES (2, 'USA', 332915073, 9833520);
INSERT INTO Country VALUES (3, 'UK', 67545757, 243610);
INSERT INTO Country VALUES (4, 'Japan', 125836021, 377975);
INSERT INTO Country VALUES (5, 'Russia', 143912676, 17098246);
INSERT INTO Country VALUES (6, 'China', 1444216107, 9596961);
select * from Country;





CREATE TABLE Persons (Id INT PRIMARY KEY,Fname VARCHAR(50) NOT NULL,Lname VARCHAR(50) NOT NULL,Population BIGINT NOT NULL,Rating FLOAT NOT NULL,Country_Id INT,Country_name VARCHAR(50));
INSERT INTO Persons VALUES (101, 'Ravi', 'Kumar', 1407563842, 9.1, 1, 'India');
INSERT INTO Persons VALUES (102, 'Emma', 'Smith', 332915073, 5.3, 2, 'USA');
INSERT INTO Persons VALUES (103, 'Oliver', 'Brown', 67545757, 8.2, 3, 'UK');
INSERT INTO Persons VALUES (104, 'Takashi', 'Kobayashi', 125836021, 6.0, 4,'Japan');
INSERT INTO Persons VALUES (105, 'Ivan', 'Petrov', 143912676, 8.3, 5, 'Russia');
INSERT INTO Persons VALUES (106, 'Li', 'Wei', 1444216107, 4.7, 6, 'China');
INSERT INTO Persons VALUES (107, 'Priya', 'Nair', 1407563842, 7.5, 1, 'India');
INSERT INTO Persons VALUES (108, 'Michael', 'Johnson', 332915073, 6.8, 2, 'USA');
INSERT INTO Persons VALUES (109, 'Henry', 'Clark', 67545757, 7.1, 3, 'UK');
INSERT INTO Persons VALUES (110, 'Yuki', 'Tanaka', 125836021, 8.0, 4, 'Japan');
select * from Persons;
drop table Persons;
alter table persons add dob date;

update persons set dob = '1995-05-20' where id = 101;
update persons set dob = '1992-10-15' where id = 102;
update persons set dob = '1997-09-10' where id = 103;
update persons set dob = '1994-08-15' where id = 104;
update persons set dob = '1995-05-20' where id = 105;
update persons set dob = '1996-01-15' where id = 106;
update persons set dob = '1995-06-27' where id = 107;
update persons set dob = '2000-12-01' where id = 108;
update persons set dob = '1995-05-02' where id = 109;
update persons set dob = '1998-07-15' where id = 110;

delimiter #
create function age(dob date)
returns int
deterministic
begin
	return timestampdiff(year, dob, curdate()); 
End#
delimiter #

select age('1995-06-27');

select id, fname, lname, dob, age(dob) as age from Persons;
select id, country_name,char_length(country_name) as name_length from country;
select left(country_name,3) from Country ;
select upper(country_name) from Country;
select lower(country_name) from Country;



