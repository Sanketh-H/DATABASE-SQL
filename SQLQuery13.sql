select * from EmployeeMaster2
select * from emptable5

--union : combine the result of the results(multiple)

-- for union:column name and data type should be same in all the result sets

-- union all,union
-- union all : combines all rows from the result sets 

--select co1...from table1
--union
--select col1...from table2

select
idemployee,empname,gender from EmployeeMaster2
union all
select empid as
idemployee,empname,gender from emptable5



--union : combines only the unique rows from the resultsets

select empname,gender from EmployeeMaster2
union
select empname,gender from emptable5

--intersect : combinesonly the common data from the resultsets

select empname,gender from EmployeeMaster2
intersect
select empname,gender from emptable5
