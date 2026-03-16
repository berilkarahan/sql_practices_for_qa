create database Employeeportal;
use Employeeportal;
create table if not exists Employeeinfo(
name varchar(100) not null,
id varchar(200),
dept varchar(20),
 age int not null,
 primary key(name)
 
);

use example;
create table  credentials(
scenario varchar(20),username varchar(20),password varchar(20));


INSERT INTO credentials (scenario, username, password) VALUES
('login', 'mert01', 'abc123'),
('signup', 'ayse_dev', 'test123'),
('payment', 'kullanici77', 'pass456'),
('reset', 'admin_test', 'sifre1'),
('profile', 'denizK', 'deniz12'),
('checkout', 'user2026', 'user123'),
('login', 'guest123', 'guest1'),
('signup', 'elif_oz', 'elif123'),
('payment', 'burak99', 'burak1'),
('reset', 'test_user', 'test1234');
select* from credentials where scenario='login';



