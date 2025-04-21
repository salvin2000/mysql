-- 1. Create a table named teachers with fields id, name, subject, experience and salary and insert 8 rows

create table teachers(id int auto_increment primary key, name_ varchar(30), subject_ varchar(20),years_of_experience int,salary int);
desc employee;
drop table teachers;

insert into teachers (id, name_, subject_, years_of_experience, salary) values
(1, 'ravi sharma', 'mathematics', 10, 55000),
(2, 'anita desai', 'english', 8, 52000),
(3, 'sunil mehta', 'physics', 12, 60000),
(4, 'priya singh', 'chemistry', 7, 50000),
(5, 'amit verma', 'biology', 5, 48000),
(6, 'neha kapoor', 'history', 9, 53000),
(7, 'rajeev rathi', 'computer science', 11, 62000),
(8, 'kavita rao', 'geography', 6, 49000);

select * from teachers;

-- 2. Create a before insert trigger named before_insert_teacher that will raise an error
-- “salary cannot be negative” if the salary inserted to the table is less than zero.

delimiter &&
create trigger before_insert_teacher
before insert on teachers
for each row
begin
	if new.salary<0 then 
    signal sqlstate '45000'
    set message_text="salary cannot be negative";
    end if;
end &&
delimiter ;

drop trigger before_insert_teacher;

insert into teachers values(9, 'svi sharma', 'cosmology',6, -5500);
select * from teachers;

-- 3. Create an after insert trigger named after_insert_teacher that inserts a row with teacher_id,action, timestamp 
-- to a table called teacher_log when a new entry gets inserted to the teacher table.
-- tecaher_id -> column of teacher table, action -> the trigger action, timestamp -> time at which the new row has got inserted.

create table teacherlog(log_id int auto_increment primary key,teacher_id int ,action_type varchar(10),action_time timestamp);
drop table teacherlog;

delimiter &&
create trigger after_insert_teacher
after insert on teachers
for each row
begin
	insert into teacherlog(teacher_id,action_type,action_time) values (new.id,"onboarded",now());
end &&
delimiter ;

insert into teachers values(10, 'adam', 'cosmology',3, 5500);

select * from teacherlog;

-- 4. Create a before delete trigger that will raise an error when you try to delete a row that has experience greater than 10 years. 

delimiter &&
create trigger before_delete_on
before delete on teachers
for each row
begin
	if old.years_of_experience>10 then 
    signal sqlstate '45000'
    set message_text="This teacher has more than 10 years of experience";
    end if;
end &&
delimiter ;

drop trigger before_delete_on;
insert into teachers values(1, 'ravi sharma', 'mathematics', 10, 55000);

insert into teachers values(5, 'amit verma', 'biology', 5, 48000);

delete from teachers where id=1;
delete from teachers where id=3;

select * from teachers;

-- 5. Create an after delete trigger that will insert a row to teacher_log table when that row is deleted from teacher table.

delimiter &&
create trigger after_delete_on
after delete on teachers
for each row
begin
	insert into teacherlog(teacher_id,action_type,action_time) values (old.id,"deleted",now());
end &&
delimiter ;
delete from teachers where id=5;
delete from teachers where id=6;

select * from teacherlog;