--usp : user stored procedure 

create procedure usp_selectemployeemaster

as

begin
	select idemployee,empname,gender from 
	EmployeeMaster2 order by empname
end



execute usp_selectemployeemaster