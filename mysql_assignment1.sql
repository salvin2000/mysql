-- assignment 1, school database
create database school;
create table student_marks(roll_no int, Name varchar(30),mark int,grade char(2));
desc student_marks;
alter table student_marks add contact int;
alter table student_marks drop grade; 
rename table student_marks to classten;
desc classten;
truncate table classten;
drop table classten;
