create procedure usp_empname_selectby_pk

	@empid int

as

begin

	select empid,empname,gender,designation,place,salary,
	bonus,hra,cca from emptable5 where empid = @empid

end


execute usp_empname_selectby_pk 1001

select * from emptable5