create procedure usp_empname_select_all

as

begin

	select empid,empname,gender,designation,place,salary,
	bonus,hra,cca from emptable5 order by empname

end

exec usp_empname_select_all
