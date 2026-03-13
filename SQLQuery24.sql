---while loop : repeats the given set of instructions untill the condition satisfies


--while condition
--begin
--code
--end

--sp tp generate multiplication table for the given number


create procedure usp_while_loop
	@num int

as

begin
	declare
		@i int


	set @i = 1
	while(@i<=10)
	begin
		select @num * @i
		set @i =@i+1
	end

end


 execute usp_while_loop 12