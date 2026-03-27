ALTER procedure [dbo].[usp_empname_selectby_pk]

	@empid int

as

begin

	select 
	isnull(empid,0) as Empid,
	isnull(empname,'') as EmployeeName,
	isnull(gender,'') as Gender,
	isnull(designation,'') as Designation,
	isnull(place,'') as Place,
	isnull(salary,0) as Salary,
	isnull(bonus,0) as Bonus,
	isnull(hra,0) as HRA,
	isnull(cca ,0) as CCA
	from emptable5 where empid = @empid

end
exec usp_empname_selectby_pk 1002