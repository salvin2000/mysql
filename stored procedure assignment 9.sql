create database company1;

use company1;

-- 1 exercise
create table worker (worker_id int primary key,first_name varchar(25),last_name varchar(25),salary int(15),joining_date datetime,department varchar(25));


select * from worker;


delimiter #
create procedure worker_d(in p_id int,in p_first_name varchar(20),in p_last_name varchar(20),in p_salary int(15), in p_joining_date datetime,in p_department char(25))
begin 
	insert into worker (worker_id, first_name, last_name, salary, joining_date, department) 
    values (p_id, p_first_name, p_last_name, p_salary, p_joining_date, p_department);
end #
delimiter ;


call worker_d(1, 'john', 'doe', 50000, '2022-01-15 09:00:00', 'hr');
call worker_d(2, 'Jane', 'Smith', 60000, '2021-06-20 10:30:00', 'Finance');
call worker_d(3, 'Robert', 'Brown', 55000, '2023-03-10 11:45:00', 'IT');
call worker_d(4, 'Emily', 'Clark', 58000, '2020-08-05 08:15:00', 'Marketing');
call worker_d(5, 'Michael', 'Wilson', 62000, '2019-12-12 09:45:00', 'Operations');
call worker_d(6, 'Sophia', 'Taylor', 53000, '2022-05-18 14:20:00', 'HR');
call worker_d(7, 'David', 'Anderson', 57000, '2021-09-25 16:10:00', 'Finance');
call worker_d(8, 'Olivia', 'Martinez', 59000, '2020-07-30 12:00:00', 'IT');
call worker_d(9, 'Daniel', 'Thomas', 54000, '2018-04-22 13:35:00', 'Marketing');
call worker_d(10, 'Emma', 'Harris', 61000, '2017-11-11 07:50:00', 'Operations');


 -- 2 exercise
 
 select @ses sal;
 delimiter #
 create procedure worker_salary(in id int, out sal int)
 begin
	select salary into sal from worker where worker_id=id;
end#
delimiter ;

drop procedure worker_salary;
call worker_salary(3,@ses);
select @ses sal;

-- 3 exercise


 delimiter #
 create procedure worker_department(in id int, in department varchar(25))
 begin
	update worker set department=department where worker_id=id;
end#
delimiter ;

drop procedure worker_department;
call worker_department(3,'engineering');
select * from worker;

-- 4. Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_workerCount. 
-- It should retrieve the number of workers in the given department and returns it in the p_workerCount parameter.
-- Make procedure call.

delimiter #
create procedure department_wcount(in depart varchar(24),out workercount int)
begin
	select count(department) into workercount from worker where department=depart;
end#
delimiter ;
drop procedure department_wcount;
call department_wcount('finance',@ses);
select @ses workercount;

-- 5 Write a stored procedure that takes in an IN parameter for DEPARTMENT and an OUT parameter for p_avgSalary.
-- It should retrieve the average salary of all workers in the given department and returns it in
-- the p_avgSalary parameter and call the procedure.

delimiter #
create procedure avgsalary(in depart varchar(24),out avgsal int)
begin
	select avg(salary) into avgsal from worker where department=depart;
end#
delimiter ;
drop procedure avgsalary;
call avgsalary('it',@ses);
select @ses avgsal;
