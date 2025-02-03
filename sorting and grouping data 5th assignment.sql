create database country1;
use country1;
CREATE TABLE Country (Id INT PRIMARY KEY, Country_name VARCHAR(50) NOT NULL, Population BIGINT NOT NULL, Area FLOAT NOT NULL );
INSERT INTO Country VALUES (1, 'India', 1407563842, 3287263);
INSERT INTO Country VALUES (2, 'USA', 332915073, 9833520);
INSERT INTO Country VALUES (3, 'UK', 67545757, 243610);
INSERT INTO Country VALUES (4, 'Japan', 125836021, 377975);
INSERT INTO Country VALUES (5, 'Russia', 143912676, 17098246);
INSERT INTO Country VALUES (6, 'China', 1444216107, 9596961);
select * from Country;




CREATE TABLE Persons (Id INT PRIMARY KEY,Fname VARCHAR(50) NOT NULL,Lname VARCHAR(50) NOT NULL,Population BIGINT NOT NULL,Rating FLOAT NOT NULL,Country_Id INT,Country_name VARCHAR(50),FOREIGN KEY (Country_Id) REFERENCES Country(Id) );
INSERT INTO Persons VALUES (101, 'Ravi', 'Kumar', 1407563842, 9.1, 1, 'India');
INSERT INTO Persons VALUES (102, 'Emma', 'Smith', 332915073, 5.3, 2, 'USA');
INSERT INTO Persons VALUES (103, 'Oliver', 'Brown', 67545757, 8.2, 3, 'UK');
INSERT INTO Persons VALUES (104, 'Takashi', 'Kobayashi', 125836021, 6.0, 4, 'Japan');
INSERT INTO Persons VALUES (105, 'Ivan', 'Petrov', 143912676, 8.3, 5, 'Russia');
INSERT INTO Persons VALUES (106, 'Li', 'Wei', 1444216107, 4.7, 6, 'China');
INSERT INTO Persons VALUES (107, 'Priya', 'Nair', 1407563842, 7.5, 1, 'India');
INSERT INTO Persons VALUES (108, 'Michael', 'Johnson', 332915073, 6.8, 2, 'USA');
INSERT INTO Persons VALUES (109, 'Henry', 'Clark', 67545757, 7.1, 3, 'UK');
INSERT INTO Persons VALUES (110, 'Yuki', 'Tanaka', 125836021, 8.0, 4, 'Japan');
select * from Persons;

select * from Country where country_name like '___';
select concat(fname,' ',lname) as 'full name' from Persons;
select country_name country,count(country_name) count from persons group by country_name;
select max(population)  from persons;
select min(population)  from persons;
insert into persons values(111,'anna',' ',125836021,7.7,4,'japan');
insert into persons values(112,'abella',' ',143912676, 8.1, 5, 'Russia');
select count(*)'rows' from persons ;
select * from country limit 3;
select * from country order by rand() limit 3;
select id,fname 'name',rating,country_name country from persons order by rating desc;
select country_name country,population from persons ;
select country_name,population from persons where population>1000000;
select country_name,count(*) as total_persons,avg(rating) as avg_rating from persons group by country_name having count(*)>2 order by avg_rating asc; 