--tasks
--proc to accept 3 numbers and to find the average of 2 best numbers 

create procedure usp_average3nums
	@num1 int,
	@num2 int,
	@num3 int
as
begin
	if @num1<=@num2 and @num1<=@num3
	begin
		select (@num2 + @num3)/2 as avg
	end
	else if @num2<=@num1 and @num2<=@num3
	begin
		select (@num1 + @num3)/2 as  avg
	end
	else
	begin
		select(@num1 + @num2)/2 as avg
	end

end



execute usp_average3nums 10,2,40