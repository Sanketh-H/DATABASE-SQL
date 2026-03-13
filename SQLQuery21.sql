--tasks
--proc to accept 3 numbers and to find the average of 2 best numbers 
create procedure usp_average3nums_set
	@num1 int,
	@num2 int,
	@num3 int
as
begin
declare
	@avg float
if @num1<=@num2 and @num1<=@num3
	begin
		set @avg = (@num2 + @num3)/2
	end
	else if @num2<=@num1 and @num2<=@num3
	begin
		set @avg =  (@num1 + @num3)/2
	end
	else
	begin
		set @avg = (@num1 + @num2)/2 
	end
	select @avg as average,@num1 as num1,@num2 as num2,@num3 as num3

end



execute usp_average3nums_set 10,2,40