create database onlineShopping;
use onlineShopping;
create table customerDetails(customerid int, address varchar(20),zipcode int, primary key(customerid));
INSERT INTO customerDetails (customerid, address, zipcode) VALUES
(1, 'Istanbul', 34000),
(2, 'Ankara', 06000),
(3, 'Izmir', 35000),
(4, 'Bursa', 16000),
(5, 'Antalya', 07000),
(6, 'Adana', 01000);
#customer id is primary key

create table Orders(Orderid int, customerid int,Amount int, date int,Foreign Key(customerid) references customerDetails(customerid) on delete cascade );
INSERT INTO Orders (Orderid, customerid, Amount, date) VALUES
(101, 1, 250, 20240115),
(102, 2, 500, 20240203),
(103, 3, 150, 20240322),
(104, 4, 800, 20240410),
(105, 5, 320, 20240518),
(106, 6, 640, 20240601);
#customer id is foren key

#foreign key oluşturuyorsak bir tabloda önce onun primary key olduğu tablo da datay oluşturmamz lazm

delete from Orders where customerid=2;#bunu yapabildik cünkü bu foreign key in olduğu tablo o yüzden de yaplabiliyor 
#ama direkt burda silmeden customerDetails tablosunu silemezdik.
#ama delete on cascade eklersek foreign key tablosuna parentte yani customerid nin primary key lduğu tabloda(customerDetails)
#silindiğinde foreign key olduğu tüm tablolardan da silinir 





create table customerDetails2 (customerid int, address varchar(20),zipcode int, primary key(customerid));
create table Orders2(Orderid int, customerid int,Amount int, date int,Foreign Key(customerid) references customerDetails2(customerid) );
INSERT INTO customerDetails2 (customerid, address, zipcode) VALUES
(1, 'Istanbul', 34000);
INSERT INTO Orders2 (Orderid, customerid, Amount, date) VALUES
(101, 1, 250, 20240115);
#burada customerdetails2 den direkt data silemeyiz çünkü primary keyleri başka tabloda foreign key olarak kullanlyr bu yüzden 
#önce foreign key olduğu tablodan silmemiz lazm eğer orders 2 ye on delete cascade eklesek bunlar olmazd
delete  from customerDetails2 where customerid=1;














