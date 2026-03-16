use example;

#1st ans 2nd year students 
create table College(id int, name varchar(20));
insert into College (id, name) VALUES
(1, 'Ali'),
(2, 'Ayse'),
(3, 'Mehmet'),
(4, 'Can'),
(5, 'Ece'),
(6, 'Deniz'),
(7, 'Mert'),
(8, 'Elif'),
(9, 'Burak'),
(10, 'Zeynep');

# 2year and 3 year students
create table Results (id int, name varchar(20));
insert into Results (id,name) values
(1, 'Ali'),
(12, 'Sena'),
(13, 'Emre'),
(4, 'Can'),
(15, 'Kaan'),
(6, 'Deniz'),
(17, 'Onur'),
(18, 'Bora');



#---union------
#merge tables-->eliminate duplicates
Select * from College;

select * from results;

select * from College union(select * from results);

#---Union All------
#merge tables-->allowed duplicates
Select * from College;

select * from results;

select * from College Union All(select * from results);

#---intersect---
#college tabloundaki hangş öğrenciler result tablosunda var öğrenmek istiyoruz
#which colums is common in 2 table

select * from college where id in (select id from Results);

#-----exist------
#find id in college table if it is exist in table then want to see all table 
##seeing all table depends on finding that id in that table 
select * from college where exists(select * from college where id=4);
#id 4 bu tabloda bulunduğu için tüm tabloyu görebildik

#-----case-------
#modifiying table 
create table Marks(score int,name varchar(20));
insert into Marks(score,name) values 
(45,'Tina'),
(23,'Tim'),
(64,'Harsh'),
(65,'Tam'),
(98,'Sam'),
(34,'Jack');

select * from Marks;

select name, score,case name when 'Tim' then score *2
when 'Sam' then score - 25 
else score 
end
'New Score'
from Marks;
#eğer isim tim ise score u 2 ile çarp, isim sam ise score undan 25 çkar




















