show databases;
create database university;
use university;
drop database university;
create table students(
     student_id int primary key,
     student_name varchar(50),
     student_age int,
     student_major varchar(30));
INSERT INTO students VALUES(1,"jagan",20,"ECE");
INSERT INTO students VALUES(2,"hema",16,"CSE");
INSERT INTO students VALUES(3,"gops",18,"IT");
INSERT INTO students VALUES(4,"pooja",15,"EEE");
INSERT INTO students VALUES(5,"pranav",12,"BME");

show tables;
select*from students;

select student_name from students
where student_major="CSE";

select max(student_age) from students;

update students set student_major='IT'
where student_id=4;
 
 delete from students
 where student_id=2;
