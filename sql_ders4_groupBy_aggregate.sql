use world;
CREATE TABLE Transactions(Month varchar(50),Day int,Amount int,branch varchar(50));
describe Transactions;
INSERT INTO transactions VALUES ('feb', 13, 124, 'bangalore');
INSERT INTO transactions VALUES ('feb', 17, 20400, 'chicago');
INSERT INTO transactions VALUES ('feb', 212, 320, 'sydney');
INSERT INTO transactions VALUES ('mar', 22, 9600, 'bangalore');
INSERT INTO transactions VALUES ('mar', 16, 5200, 'chicago');
INSERT INTO transactions VALUES ('april', 12, 23, 'sydney');
INSERT INTO transactions VALUES ('Jan', 13, 666, 'bangalore');
INSERT INTO transactions VALUES ('may', 2, 3111, 'sydney');
INSERT INTO transactions VALUES ('may', 1, 99999, 'paris');
INSERT INTO transactions VALUES ('Jan', 12, 2000, 'paris');

select * from transactions;

#Get Total Sum of amount  generated for each month
SELECT month, SUM(Amount) FROM transactions GROUP BY month;

#Get Maximum Transaction generated for each month
select month, max(amount) from transactions group by month;

#Get Minimum Amount generated for each month
select month, min(amount) from transactions group by month;

select branch, min(amount) from transactions group by branch;

#Get Average Amount generated for each month
select  month, avg(amount) from transactions group by month;

#No of Transactions occurred for each month
select month, count(*) from transactions group by month;

#Get the Transactions which occurred less than 2 for any month
select month, count(*) from transactions group by month having count(*)<2;
#conditions on table ,where 
#conditions on tgroup results,having
#having group un sonucuna uygulanr

#Get Total Sum of amount  generated for each month only in Bangalore
#or Chicago branches
select month, sum(amount) from transactions where branch in('bangalore','chicago') group by month ;
#önce where ile satr satr filtrleme yaplr
#sonra group yaplr 

#Get the month which has total sale amount lesss than 1000 when I combine both sydney and paris branches
select month, sum(amount) from transactions where branch in('sydney','paris') group by month having sum(amount)<1000;

select month, sum(amount) from transactions where branch in('bangalore','chicago') group by month having sum(amount)<1000; 


#Which branch have more than total sum of 4000Bucks in Feb
select sum(amount),branch from transactions where month='feb' group by branch having sum(amount)>4000;








