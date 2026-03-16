#----string functions------

select * from company;

#concat
select concat(name,' ',branch) as name_and_branch from company;

#substring
SELECT name
FROM company
WHERE SUBSTRING(name,1,4) = 'Tech';

#replace
select replace(name,'Soft','Hard') from company where name='DataSoft';

#length
Select length(name) from company where name = 'Future';

#trim
select trim(' king ');

# limit
select name from company limit 3;

#length
select length(name) from company;