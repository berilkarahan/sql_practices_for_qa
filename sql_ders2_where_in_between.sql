use Qadbt;

select age from Employeeinfo;
select * from Employeeinfo;

insert into Employeeinfo values('nam',7,'charlotte',21,'male');

#unique names in employeetable 
select distinct name from Employeeinfo;

#get the employees name of newyork
select name from Employeeinfo where location='newyork';
#get the employees name of newyork where the age be more than 23
select name from Employeeinfo where location='newyork' and age>23;
#get the employees name of florida  where the age be less  than 23 or location is from charlotte
select name from Employeeinfo where (location='florida' and age<23 )or location='charlotte';

select name from Employeeinfo where id= 1 or id=4;

select name from Employeeinfo where id= 1 or location='florida';


#range 
#print the amployeenames who age  should be between 23 and 25
select name from Employeeinfo where age in(23,24,25);

#print the employee name whose age in between 21 and 99
select name, age from Employeeinfo where age between 21 and 99;

#print the amployee names, age  less than 25
select name from Employeeinfo where age<25;
select name, age from Employeeinfo where age between 0 and 25;
select name, age from Employeeinfo where age not  between 25 and 100;

#id should not be 25-100




