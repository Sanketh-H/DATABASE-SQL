select * from placemaster2
select * from deptmaster2
select * from EmployeeMaster2
select * from empdetails2

insert into placemaster2 values('Hassan','Hassan','Karnataka','573201')
insert into placemaster2 values('Belur','Hassan','Karnataka','573201')
insert into placemaster2 values('Arisikare','Hassan','Karnataka','573201')
insert into placemaster2 values('Kadur','Chickmagalore','Karnataka','573201')
insert into placemaster2 values('Tarikere','Chickmagalore','Karnataka','573201')

insert into deptmaster2 values ('Admin','Admin','10/10/2000')
insert into deptmaster2 values ('HR','HR','10/10/2000')
insert into deptmaster2 values ('Development','development','10/10/2000')
insert into deptmaster2 values ('Marketing','salse and marketing','10/10/2000')
insert into deptmaster2 values ('Network','maintenance of hardware and newtork','10/10/2000')

insert into EmployeeMaster2 values('Amar','M','10/10/2000',101,'3345345','dummyemail.com','1341443')
insert into EmployeeMaster2 values('Rani','F','10/10/2000',101,'3345345','dummyemail.com','1341443')
insert into EmployeeMaster2 values('Tina','F','10/10/2000',102,'3345345','dummyemail.com','1341443')
insert into EmployeeMaster2 values('Arjun','M','10/10/2000',105,'3345345','dummyemail.com','1341443')
insert into EmployeeMaster2 values('Kiran','M','10/10/2000',104,'3345345','dummyemail.com','1341443')

insert into empdetails2 values(1001,501,'10/10/2023',60000)
insert into empdetails2 values(1002,502,'10/10/2023',60000)
insert into empdetails2 values(1003,503,'10/10/2023',60000)
insert into empdetails2 values(1004,501,'10/10/2023',60000)
insert into empdetails2 values(1005,502,'10/10/2023',60000)

--insert into EmployeeMaster values('Kiran','M','10/10/2000',106,'3345345','dummyemail.com','1341443')
--we get an error as 106 is not present in placemaster













--joins

--query to display employee, gender, place

select e.empname,e.gender,p.placename from EmployeeMaster2 e
inner join placemaster2 p on e.idplace = p.idplace

--to count the number of employees place wise
select count(e.idplace)No_of_Emp_place_wise,p.idplace,p.placename from EmployeeMaster2 e
inner join placemaster2 p on e.idplace = p.idplace
group by p.idplace,p.placename

--query to dipslay empname,doj,salary
select e.empname, i.doj, i.salary from EmployeeMaster2 e
inner join empdetails2 i on i.idemployee = e.idemployee

--query to display employeename, depname, doj, salary
select e.empname,d.depname,i.doj,i.salary from EmployeeMaster2 e
inner join empdetails2 i on e.idemployee = i.idemployee
inner join deptmaster2 d on d.iddept = i.iddept

--query to display employeename,place,depname, doj, salary
select e.empname,p.placename,d.depname,i.doj,i.salary from EmployeeMaster2 e
inner join placemaster2 p on e.idplace = p.idplace
inner join empdetails2 i on e.idemployee = i.idemployee
inner join deptmaster2 d on d.iddept = i.iddept


