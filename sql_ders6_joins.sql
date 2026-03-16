use world;

-- Önce tabloları varsa sil
DROP TABLE IF EXISTS company;
DROP TABLE IF EXISTS established;

-- Company tablosunu oluştur
CREATE TABLE company (
    Name VARCHAR(20),
    Branch VARCHAR(15),
    employees INT
);

-- Company verilerini ekle
INSERT INTO company (Name, Branch, employees) VALUES
('TechNova', 'Istanbul', 120),
('TechNova', 'Antalya', 150),
('DataSoft', 'Ankara', 85),
('DataSoft', 'Istanbul', 30),
('BlueWave', 'Izmir', 60),
('NetCore', 'Bursa', 45),
('Future', 'Ankara', 200),
('CloudSys', 'Izmir', 95),
('NextGen', 'Kocaeli', 70),
('Future', 'Eskisehir', 40);

-- Established tablosunu oluştur
CREATE TABLE established (
    Name VARCHAR(20),
    Year INT
);

-- Established verilerini ekle
INSERT INTO established (Name, Year) VALUES
('TechNova', 2008),
('DataSoft', 2008),
('BlueWave', 2015),
('SkyLine', 2003),
('Future', 2019),
('NetCore', 2008);

#need total employees count of a company which is established in a year 2008
select c.name,e.Year, sum(c.Employees) from Company as c join Established as e on c.name=e.name where e.Year=2008 group by c.name;

#need total employees count of a company which is established year greater than 2008
select c.name, sum(c.employees)  from Company as c join Established as e on c.name=e.name group by c.name HAVING MAX(e.year) > 2008;

#min employees present in a branch for all companies established after 2008;
select c.name ,min(c.employees) from company as c join Established as e on c.name =e.name where e.year>2008 group by c.name;

#--left join----
create database example;
use example;
create table StudentDetails (name varchar(20),id int, age int, gender varchar(10),Location varchar(20));
INSERT INTO StudentDetails (name, id, age, gender, Location) VALUES
('Ahmet', 1, 20, 'Male', 'Istanbul'),
('Ayse', 2, 22, 'Female', 'Ankara'),
('Mehmet', 3, 21, 'Male', 'Izmir'),
('Elif', 4, 19, 'Female', 'Bursa'),
('Can', 5, 23, 'Male', 'Antalya'),
('Zeynep', 6, 20, 'Female', 'Eskisehir');

create table Grades (grade varchar(1),id int);
insert into Grades (grade,id) values
('A',2),
('B',3),
('A',4),
('C',5),
('B',7);

#get the students details with resukt who passed in exams
select s.name, s.id, s.age, s.gender,s.location from StudentDetails as s join Grades as g on s.id=g.id;

#get the student details with result who appeared in exams
select s.name, s.id, s.age, s.gender,g.grade from StudentDetails as s left join Grades as g on s.id=g.id;

#get all students details with result who passed in exams
select s.name, s.id, s.age, s.gender,g.grade from StudentDetails as s right join Grades as g on s.id=g.id;

#get me female student details
select s.name, s.id, s.age, s.gender,g.grade from StudentDetails as s left join Grades as g on s.id=g.id where gender='female';

#get me male student details
select s.name, s.id, s.age, s.gender,g.grade from StudentDetails as s left join Grades as g on s.id=g.id where gender='male';

#get me student details who age greater than 20
select s.name, s.id, s.age, s.gender,g.grade from StudentDetails as s left join Grades as g on s.id=g.id where age>20;




