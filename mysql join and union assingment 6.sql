create database c1;
use c1;

CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(50) NOT NULL, Population BIGINT NOT NULL, Area FLOAT NOT NULL );
INSERT INTO Country VALUES (1, 'India', 1407563842, 3287263);
INSERT INTO Country VALUES (2, 'USA', 332915073, 9833520);
INSERT INTO Country VALUES (3, 'UK', 67545757, 243610);
INSERT INTO Country VALUES (4, 'Japan', 125836021, 377975);
INSERT INTO Country VALUES (5, 'Russia', 143912676, 17098246);
INSERT INTO Country VALUES (6, 'China', 1444216107, 9596961);
select * from Country;





CREATE TABLE Persons (Id INT PRIMARY KEY,Fname VARCHAR(50) NOT NULL,Lname VARCHAR(50) NOT NULL,Population BIGINT NOT NULL,Rating FLOAT NOT NULL,Country_Id INT,Country_name VARCHAR(50) );
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

select c.id,c.Country_name,c.population,p.id,p.fname,p.Country_name from Country c left join Persons p on c.id=p.id;

select c.id,c.Country_name,c.population,p.id,p.fname,p.Country_name from Country c right join Persons p on c.id=p.id;

select * from Country c inner join Persons p on c.id=p.id;

select distinct c.Country_name,p.Country_name from Country c inner join Persons p on c.id=p.id;

select Country_name from Country 
union 
select Country_name from Persons;

select id,fname,lname,population,round(rating) rating, Country_id, Country_name From Persons;
