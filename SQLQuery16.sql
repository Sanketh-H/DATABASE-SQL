--if else 
--if condition
--begin
	--set of instructions
--end
--else
--begin
	--set of instructions
--end


create procedure usp_big2nums_else
	@num1 int,
	@num2 int
as
begin
	if @num1>@num2
	begin
	select @num1
	end
	
	else
	begin
		select @num2
	end
end


execute usp_big2nums_else 30,55