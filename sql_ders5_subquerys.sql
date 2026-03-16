use world;
create table citizenloc(Name varchar(20),Location varchar(20));
describe citizenloc;

insert into citizenloc values('rahul','california');
insert into citizenloc values('george','california');
insert into citizenloc values('flex','texas');
insert into citizenloc values('steve','california');
insert into citizenloc values('husain','chicago');

create table citizens(Name varchar(20),age int, exp int);

insert into citizens values('rahul',34,6);
insert into citizens values('subash',34,6);
insert into citizens values('george',41,10);
insert into citizens values('flex',23,15);
insert into citizens values('husain',10,0);
insert into citizens values('steve',24,7);


#what is the age of the people located in texas?
select name,age from citizens where name=(select name from citizenloc where location='texas') ;
#birinci tablo da  age var
select name from citizenloc where location='texas';
#ikinci tabloda location bilgileri var. bize ikisinin buşulmas lazm

#birinci tablo ve ikinci tablonun ortak noktas name var ikisinde de. ikinci tablo locasyona göre isim dönüyor 


#experience of the people located in chicago
select name from citizenloc where location='chicago';
select name, exp from citizens where name=(select name from citizenloc where location='chicago');
#tek bir sonuç döndürebilir

#what is the age of the people located in california?
select name from citizenloc where location='california';
select name,age from citizens where name in (select name from citizenloc where location='california');
#in ile multiple cevap döndürebiliriz


#name and location of the person whom age is 41
select name from citizens where age =41;
select name, location from citizenloc where name=(select name from citizens where age =41);


#----------joins------------

select c.name,cl.location ,c.age from citizens as c join citizenloc as cl on c.name=cl.name where cl.location='california' ;
#2 tablo da da name ortak based on name join two table






