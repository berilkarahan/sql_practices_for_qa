use example;
create table Book_information (book_id int, book_title varchar(30), price int, primary key(book_id));
INSERT INTO Book_information (book_id, book_title, price) VALUES
(1, 'Gizemli Orman', 120),
(2, 'Matematik 101', 85),
(3, 'Tarih Yolculuğu', 95),
(4, 'Uzay Macerası', 150),
(5, 'Programlama Rehberi', 200),
(6, 'Sanatın Sırları', 130),
(7, 'Küçük Prens', 75),
(8, 'Bilim Dünyası', 110);

#select all columns
select * from book_information;

#select all books that has price higher than 90
select * from book_information where price >90;

#select all books whose title starts with 'B'
select * from book_information where book_title like 'B%';

#sort all books  from highest to lowest
select * from book_information order by price desc;

#insert data into table
insert into book_information (book_id,book_title,price) values (9,'Uğultulu Tepeler',100);
select * from book_information;

#delete one row
delete from book_information where book_id=9;
select * from book_information;

#update the price,
UPDATE Book_information
SET price = 120
WHERE book_id = 3;

select * from book_information;

#highest price book info

select * from book_information order by price desc limit 1;
select max(price) from book_information;

#find all books price between 90 -120

select * from book_information where price between 90 and 120;

##--------------------------------------------------------------

create table exam_results (student_id int, first_name varchar(20), last_name varchar(20),exam_id int,exam_score int);
INSERT INTO exam_results (student_id, first_name, last_name, exam_id, exam_score) VALUES
(1, 'Ahmet', 'Yilmaz', 1, 75),
(1, 'Ahmet', 'Yilmaz', 2, 88),

(2, 'Ayse', 'Demir', 1, 92),
(2, 'Ayse', 'Demir', 2, 85),

(3, 'Mehmet', 'Kara', 1, 60),
(3, 'Mehmet', 'Kara', 2, 73),

(4, 'Elif', 'Celik', 1, 81),
(4, 'Elif', 'Celik', 2, 90),

(5, 'Can', 'Aydin', 1, 55),
(5, 'Can', 'Aydin', 2, 68);

select count(distinct student_id) from exam_results;

#for exam_id=1  find avg score

select exam_id,avg(exam_score) from exam_results where exam_id=1 group by exam_id;

#find how many students took each exam?
select exam_id ,count(*) from exam_results group by exam_id;
select exam_id, max(student_id) from exam_results group by exam_id;

#print all students whose laast name starts with 'D'
select * from exam_results where last_name like 'D%';
#-----
select  max(exam_score) from exam_results where exam_id=1 and first_name like '%E%';

#find whose first name or last name ends with 'A'
select * from exam_results where first_name like '%A' or last_name like '%A';

#find name of all students who scored better than 85 on the second exam
select first_name from exam_results where exam_id=2 and exam_score>85;


#find names of all student who scored better than 170 on all the exams->toplam notu 170 den büyük olanlar
select first_name,last_name,sum(exam_score) from exam_results group by first_name,last_name having sum(exam_score)>170;

select * from exam_results where last_name like '%N%' and exam_score >50;

select* from exam_results where student_id<=3 and exam_score>85;







