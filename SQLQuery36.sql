--dynamic sql :
--building the query dynamically

ALTER procedure usp_empname_select_all

	@gender varchar(10) = null,
	@place varchar(25) = null,
	@designation varchar(50) = null

as

begin

	declare @qstr nvarchar(max)

	set @qstr = 
	'select isnull(empid,'''') as Empid,
	isnull(empname,'''') as Empname,
	isnull(gender,'''') as Gender,
	isnull(designation,'''') as Designation,
	isnull(place,'''') as Place,
	isnull(salary,0) as Salary,
	isnull(bonus,0) as Bonus,
	isnull(hra,0) as HRA,
	isnull(cca,0) as CCA
	from emptable5
	where 1 = 1'

	if @gender != null or @gender != ''
	begin
		set @qstr = @qstr + ' and gender = ' + '''' + @gender + ''''
	end

	if @place != null or @place != ''
	begin
		set @qstr = @qstr + ' and place = ' + '''' + @place + ''''
	end

	if @designation != null or @designation != ''
	begin
		set @qstr = @qstr + ' and designation = ' + '''' + @designation + ''''
	end

	--select @qstr

	EXEC sp_executesql @qstr

end

exec usp_empname_select_all 'male','hassan',null



--select * from emptable5