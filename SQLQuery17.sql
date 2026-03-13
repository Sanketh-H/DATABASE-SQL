--logical operators
--and,or,not


create procedure usp_big3nums
	@num1 int,
	@num2 int,
	@num3 int
as
begin
if @num1>@num2 and @num1>@num3
begin
	select @num1
end
if @num2>@num1 and @num2>@num3
begin
	select @num2
	end
if @num3>@num1 and @num3>@num2
begin
select @num3
end
end

execute usp_big3nums 20,50,2