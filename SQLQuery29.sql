--stored procedure to insert rows to the table
--emptable

create procedure usp_emptable_insert

	@empname varchar(50),
	@gender varchar(10),
	@designation varchar(50),
	@place varchar(25),
	@salary numeric(8,2),
	@bon numeric(8,2),
	@hra numeric(10,2),
	@cca numeric(10,2)

as

begin
	
	declare
		@bonus numeric(8,2),
		@vhra numeric(10,2),
		@vcca numeric(10,2)

		set @bonus = @salary  * (@bon/100.0)
		set @vhra = @salary * (@hra/100.0)
		set @vcca = @salary * (@cca/100.0)

		insert into emptable5 
		values
		(
			@empname,
			@gender,
			@designation,
			@place,
			@salary,
			@bonus,
			@vhra,
			@vcca
		)

		select * from emptable5
end


execute usp_emptable_insert sanketh,male,manager,hassan,90000,10,20,5