show databases;
create database BooksDB;
drop database BooksDB;
use BooksDB;
create table Books(
s_no int primary key,
Book_title varchar(30),
author_name varchar(20),
genre varchar(10),
publication_year int,
price int);

INSERT  INTO Books VALUES(1,"Cindrela","Walter Elias Disney","Cartoon",1997,5000);
INSERT  INTO Books VALUES(2,"Zombie","Hitler","Horror",1987,500);
INSERT  INTO Books VALUES(3,"Life of Lord","Prince Jack","Fiction",1907,4000);
INSERT  INTO Books VALUES(4,"World tour","William","action",2002,5500);
INSERT  INTO Books VALUES(5,"Poppins","Wright Brothers","Cartoon",2010,3000);
drop table Books;

create table authors(
se_no int primary key,
author_age int,
author_native varchar(50),
author_name varchar(60),
s_no int,
constraint fk_s_no foreign key(s_no) references Books(s_no));

INSERT INTO Authors VALUES(1,20,"Dubai","William",5);
INSERT INTO Authors VALUES(2,25,"Bombay","Zombie",2);
INSERT INTO Authors VALUES(3,30,"Sidney","Walter Elias Disney",1);
INSERT INTO Authors VALUES(4,40,"Darjiling","Wright Brothers",5);

select*from Books;

select*from Books
where Book_title="World tour";

update Books
set price=3500
where s_no=4;

delete from  Books
where book_title="Zombie";

select avg(price) from Books;

select *  from Books;
select Books.s_no,Books.book_title,Books.genre,Books.publication_year,Books.price,
authors.author_name,authors.author_native,authors.author_age
from Books
join authors on Books.s_no=authors.s_no;
