create table EmployeeMaster
(
	idemployee int primary key identity(1001,1),
	empname varchar(50),
	gender varchar(10),
	dob date,
	idplace int,
	phone varchar(15),
	email varchar(50),
	aadhar varchar(15)
)
--select * from EmployeeMaster


create table placemaster
(
	idplace int primary key identity(101,1),
	placename varchar(50),
	dist varchar(50),
	state varchar(50),
	pincode varchar(50)
)

--select * from placemaster



create table deptmaster 
(
	iddept int primary key identity(501,1),
	depname varchar(50),
	description varchar(50),
	doi date
)


--select * from deptmaster


create table empdetails 
(
	idempdetails int primary key identity(1,1),
	idemployee int,
	iddept int,
	doj date,
	salary numeric(8,2)
)

--select * from empdetails


alter table EmployeeMaster
add constraint emp_place
foreign key(idplace) references placemaster

---select * from EmployeeMaster

alter table empdetails
add constraint empdetail_dept
foreign key(iddept) references deptmaster

--select * from empdetails

alter table empdetails
add constraint empdetail_empmaster
foreign key(idemployee) references employeemaster

---select * from empdetails