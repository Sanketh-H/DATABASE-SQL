--if/else if/else;

create procedure usp_big3nums_elseif
	@num1 int,
	@num2 int,
	@num3 int
as
begin
if @num1>@num2 and @num1>@num3
begin
	select @num1
end
else if @num2>@num1 and @num2>@num3
begin
	select @num2
	end
	else
	begin
		select @num3
	end
end

execute usp_big3nums_elseif 30,50,90