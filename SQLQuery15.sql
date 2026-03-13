---procedure with input parameters
--num1 and num2 are two parameters of type int
--to define parameter or variable we need to use @

--if(condition)
--begin
--set of instructions
--end


create procedure usp_big2nums
	@num1 int,
	@num2 int
as
begin
	if @num1>@num2
	begin
		select @num1
		end
	if @num2>@num1
	begin
		select @num2
		end
end


execute usp_big2nums 10,20
