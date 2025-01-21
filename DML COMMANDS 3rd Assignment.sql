create database company;
create table manager (manager_id int primary key, first_name varchar(20) not null, date_of_birth DATE not null,age int check(age between 21 and 40),last_update varchar(20) ,gender char(1),department varchar(30),salary int not null);
desc manager;
insert into manager values(100,'salvin','2002-04-04',22,'','M','IT',50000);
insert into manager values(101,'sunny','2001-07-02',24,'','F','automobile engineering',55000);
insert into manager values(102,'lucy','2002-03-06',21,'','F','IT',40000);
insert into manager values(103,'aaliya','2001-02-04',23,'','F','IT',10000);
insert into manager values(104,'ben','1990-05-04',30,'','M','bank',20000);
insert into manager values(105,'salvin','2002-09-02',22,'','M','IT',36000);
insert into manager values(106,'jeni','1991-04-04',29,'','F','IT',21000);
insert into manager values(107,'george','2000-08-21',24,'','M','IT',50000);
insert into manager values(108,'david','1986-12-09',36,'','M','automobile engineering',42000);
insert into manager values(109,'sandra','2002-07-13',22,'','F','bank',80000);

select first_name,date_of_birth,manager_id from manager;
select manager_id,first_name,(salary*12) as annual_income from manager;
select * from manager where not first_name = 'aaliya';
select * from manager where department ='IT' and salary>=25000;
select * from manager where salary between 10000 and 35000;
