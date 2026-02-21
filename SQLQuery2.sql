select * from studtable
select studname,gender from studtable

--ddl:data definition language
--create : to create table tablename(columnname datatype,....)

create table emptable
(
  empid int identity(1001,1),
  empname varchar(50),
  gender varchar(10),
  designation varchar(50),
  place varchar(25),
  salary numeric(8,2)
  )
  -- insert :is used to insert the rows to the table
  --insert into tablename values(data...)
  insert into emptable values('Hemitha','female','Team lead','Hassan',90000)
select * from emptable
insert into emptable values('Sanketh','male','Developer','Hassan',80000)
insert into emptable values('Chitra','female','Developer','Bangalore',70000)
insert into emptable values('Varsha','female','Admin','Bangalore',65000)
insert into emptable values('Pallavi','female','HR','Shivamoga',95000)
insert into emptable values('Annanya','female','Project Manger','Mysore',55000)
insert into emptable values('Swathi','female','Developer','Shivamoga',45000)
insert into emptable values('Sahana','female','Accounts','Mysore',45000)
insert into emptable values('Zoya','female','Marketing','Mangalore',50000)
insert into emptable values('Hemalatha','female','Accounts','Mangalore',35000)
