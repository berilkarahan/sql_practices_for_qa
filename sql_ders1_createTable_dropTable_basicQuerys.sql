create database Qadbt;
#creatting database

use Qadbt;
#pointing this database use comment

#create tables
create table Employeeinfo(name varchar(20),id int,location varchar(20),age int);
describe Employeeinfo;

insert into Employeeinfo values('sam',1,'newjersey',21);
insert into Employeeinfo values('ram',2,'newyork',22);
insert into Employeeinfo values('nam',3,'florida',23);
insert into Employeeinfo values('tam',4,'texas',24);

select name,id,location,age from Employeeinfo;

select name,age from Employeeinfo;

select * from Employeeinfo;

USE Qadbt;
alter table Employeeinfo add gender varchar(10);
describe Employeeinfo;
select * from Employeeinfo;

alter table Employeeinfo modify gender varchar(20);

alter table Employeeinfo drop gender; 
#changes table stuctor

describe Employeeinfo;

alter table Employeeinfo add gender varchar(10);

select * from Employeeinfo;
SET SQL_SAFE_UPDATES = 0;
#safe modu kapatmak için

update Employeeinfo set gender ='female' where  name='sam';
update Employeeinfo set gender ='male' where  name='ram';
update Employeeinfo set gender ='male' where  name='tam';
update Employeeinfo set gender ='male' where  name='nam';
insert into Employeeinfo values('lam',6,'newjersey',21,'male');

#delete a row
delete from Employeeinfo where name = 'lam';



create database sample;
use sample;
drop database sample;



















