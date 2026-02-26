--Task : 
--create studentmarks table with the following columns
--id,name,gender,branch,s1,s2,s3,s4,s5,s6,tot,average,grade
--insert minimum 15 rows and calcualte tot,average,grade


create table studentmarks
(
  sid int identity(1001,1),
  sname varchar(50),
  gender varchar(10),
  branch varchar(15),
  s1 decimal(5,2),
  s2 decimal(5,2),
  s3 decimal(5,2),
  s4 decimal(5,2),
  s5 decimal(5,2),
  s6 decimal(5,2)
  )
   select * from studentmarks
   insert into studentmarks values('hemalatha','female','cse',60,25,54,47,98,54)
 insert into studentmarks values('arpitha','female','ec',54,52,98,75,57,54)
 insert into studentmarks values('ankith','male','eee',90,54,54,54,98,45)
 insert into studentmarks values('saketh','male','cse',98,54,59,54,15,54)
 insert into studentmarks values('poornesh','male','is',87,24,54,45,97,24)
 insert into studentmarks values('abhigna','female','aiml',50,14,34,18,15,14)
 insert into studentmarks values('akash','male','cse',14,24,54,48,37,92)
 insert into studentmarks values('vishnu','male','aids',99,95,96,47,98,12)
 insert into studentmarks values('vandana','female','cybersecurity',40,49,16,37,19,37)
 insert into studentmarks values('sachin','male','cse',67,67,37,91,37,37)
 insert into studentmarks values('sanketh','male','e&i',98,37,95,67,19,37)
 insert into studentmarks values('bhoomika','female','ece',95,67,92,37,92,54)
 insert into studentmarks values('monisha','female','cse',39,51,64,64,95,63)
 insert into studentmarks values('ashiwini','female','aids',96,36,64,75,56,36)
 insert into studentmarks values('vaishanv','male','aiml',96,35,62,28,34,57)


 select * from studentmarks

alter table studentmarks
add tot decimal(6,2)
select * from studentmarks

update studentmarks
set tot = s1+s2+s3+s4+s5+s6
select * from studentmarks

alter table studentmarks
add average decimal(6,2)
select * from studentmarks

update studentmarks 
set average = tot/6

select * from studentmarks

alter table studentmarks
add grade varchar(10)

select * from studentmarks 

alter table studentmarks
alter column grade varchar(20);

update studentmarks
set grade = 'distinction'
where average>=74;
select * from studentmarks


update studentmarks
set grade = 'first class'
where average between 60 and 74

select * from studentmarks

update studentmarks
set grade = 'second class'
where average between 35 and 60

select * from studentmarks

update studentmarks
set grade ='fail'
where average<35

select * from studentmarks