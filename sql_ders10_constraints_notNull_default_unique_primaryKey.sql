#Constraints
use example;
create table constab(flightname varchar (20),flightid integer not null);
create table constab1(flightname varchar (20),flightid integer );
describe constab;

insert into constab values('abcd',1);
insert into constab1 values('defg',null);

#default 
create table constab2(name varchar(20), age int default 25);
#eğer age atamazsak default olarak 25 yazlr

insert into constab2(name) values('Ece');
select * from constab2;

#unique
create table constab3(name varchar(20),id integer unique);
insert into constab3(name, id) values('Jack',21);

#insert into constab3(name, id) values('Jill',21);#not allowed

create table constab4(name varchar(20),id integer);
insert into constab4(name, id) values('Jack',21);
insert into constab4(name, id) values('Jill',21);

#primary key
create table empdb(empid int,name varchar(20),branch varchar(20),primary key(empid));
#primary key connot be null also must be unique

insert into empdb(name,branch)values('lisa','DataSoft');
insert into empdb values(null,'lisa','DataSoft');







