#----vievs-----

use world;

select * from company;

create view TechNova_info as 
select * from company where name='TechNova';
#Temporary table 

select * from TechNova_info;
#---------------------------------
#question: give me the cpmpany names  whoose employees more than average
create view each_companys_total_employees as
select name,sum(employees)  as total_employees from company group by name;
# burada şirket ismine göre şirketleri grupladk ve şirketlerdeki toplam eleman sayn bulduk

select * from each_companys_total_employees;

select avg(total_employees) from each_companys_total_employees;
#yeni tabloya göre şirketleri gruplaynca ve her şirketin toplam eleman saysn bulunca şimdi avg tablodaki(viewdaki)
#her şeyi toplayacak ve şirket saysna bölecek avg y bulacak

select * from each_companys_total_employees where total_employees > (select avg(total_employees) from each_companys_total_employees);
#------------------------------------










