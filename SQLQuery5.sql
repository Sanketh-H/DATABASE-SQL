select * from dbo.emptable5
--offset and fetch :
--for this data should be ordered(sorted)
select * from emptable5 order by empid
offset 0 rows fetch next 5 rows only

select * from emptable5
offset 0 rows fetch next 5 rows only
--we get an error as data not sorted

select * from studtable
--delete: delete the rows /columns from table
--delete from studtable--delete all rows from studtable
delete from studtable where name = 'raani'
select * from studtable
delete from studtable where id in (7)
select * from studtable
----------------------------------------------------------------------------------------------------
select * from emptable5
delete from emptable5
select * from emptable5

insert into emptable5 values('Hemitha','female','Team lead','Hassan',90000)
insert into emptable5 values('Sanketh','male','Developer','Hassan',80000)
insert into emptable5 values('Chitra','female','Developer','Bangalore',70000)
insert into emptable5 values('Varsha','female','Admin','Bangalore',65000)
insert into emptable5 values('Pallavi','female','HR','Shivamoga',95000)
insert into emptable5 values('Annanya','female','Project Manger','Mysore',55000)
insert into emptable5 values('Swathi','female','Developer','Shivamoga',45000)
insert into emptable5 values('Sahana','female','Accounts','Mysore',45000)
insert into emptable5 values('Zoya','female','Marketing','Mangalore',50000)
insert into emptable5 values('Hemalatha','female','Accounts','Mangalore',35000)

select * from emptable5

--delete from tablename : delete all rows from the table, id's will not
--be reset

--truncate : truncate table tablename : delete all rows from the
--table and reset the ids


truncate table emptable5
------------------------------------------------------------------------------------------------------

--ddl : data defination langauge
--alter : is used to alter the structure/schema of the table

--to new column to table
--alter table tablename
--add column datatype

alter table emptable5
add bonus numeric(8,2)
select * from emptable5


--dml : update
--update is used to updata row/rows in the table

--update table
--set columnname = data (updates all rows in the table)

--update table
--set columname = data where expression
--(updates only those rows which matches the expession)

update emptable5
set empname = 'Varsha K'
where empid = 1004
select * from emptable5


--to give 20% bounus to all developers based on their salary
update emptable5
set bonus = salary * (20.0/100.0)
where designation = 'Developer'
select * from emptable5


update emptable5
set bonus = salary * (10.0/100.0)
where designation != 'Developer'
select * from emptable5
-------------------------------------------------------------------------------------------------------------------------------
--to insert data to the specified columns :
--insert into tablename (col1,col2,col3,...) values (....)
insert into emptable5 (empname,gender,designation,place,salary)
values('Amar','male','developer','hassan',60000)
select * from emptable5


insert into emptable5 values('Manya','female','Trainee','Hassan',9000)
--we get an error as number data supplied is not matching with the
--number of columns in table

select * from emptable5
delete from emptable5 where empid in (1012)
select * from emptable5


update emptable5
set bonus = salary * (20.0/100.0)
where empid = '1011'
select * from emptable5
---------------------------------------------------------------------------------------------------------
