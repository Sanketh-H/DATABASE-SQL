--break and continue

create procedure usp_while_break2
@num int

as

begin
	declare @i int
	set @i=1
	while(@i<=10)
	begin
		if @i = 6
		begin
			break
		end
		select @num * @i
		set @i = @i+1
		end

end


execute usp_while_break2 12
