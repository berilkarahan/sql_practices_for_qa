create database world;

use world;

create table city(name varchar(30),countrycode varchar(3),District varchar(20),population int);
describe city;
insert into city values('Kabul','AFG','Kabol', 1780000);
INSERT INTO city VALUES ('Tirana', 'ALB', 'Tirana', 270000);
INSERT INTO city VALUES ('Algiers', 'DZA', 'Alger', 2168000);
INSERT INTO city VALUES ('Buenos Aires', 'ARG', 'Buenos Aires', 2982146);
INSERT INTO city VALUES ('Sydney', 'AUS', 'New South Wales', 3276207);
INSERT INTO city VALUES ('Vienna', 'AUT', 'Vienna', 1608144);
INSERT INTO city VALUES ('Baku', 'AZE', 'Baki', 1787800);
INSERT INTO city VALUES ('Dhaka', 'BGD', 'Dhaka', 3612850);
INSERT INTO city VALUES ('Brussels', 'BEL', 'Brussels', 133859);
INSERT INTO city VALUES ('La Paz', 'BOL', 'La Paz', 758141);
INSERT INTO city VALUES ('Sao Paulo', 'BRA', 'Sao Paulo', 9968485);
INSERT INTO city VALUES ('Sofia', 'BGR', 'Sofia', 1122302);
INSERT INTO city VALUES ('Toronto', 'CAN', 'Ontario', 688275);
INSERT INTO city VALUES ('Beijing', 'CHN', 'Beijing', 7472000);
INSERT INTO city VALUES ('Bogota', 'COL', 'Bogota', 6260862);
INSERT INTO city VALUES ('Zagreb', 'HRV', 'Zagreb', 706770);
INSERT INTO city VALUES ('Prague', 'CZE', 'Praha', 1181126);
INSERT INTO city VALUES ('Copenhagen', 'DNK', 'Copenhagen', 495699);
INSERT INTO city VALUES ('Cairo', 'EGY', 'Cairo', 6789479);
INSERT INTO city VALUES ('Helsinki', 'FIN', 'Helsinki', 555474);

select * from city;

select name from city where countrycode like 'A%';
select countrycode from city where countrycode like 'A%';
select countrycode from city where countrycode like '__t';
select countrycode from city where countrycode like '__A';

use Qadbt;
select * from Employeeinfo;
select name from Employeeinfo order by name;
select name,id from Employeeinfo order by id desc;




