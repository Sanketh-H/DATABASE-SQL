--task
--proc to accept the marks of 6 subjects and find the total,avg,grade

create procedure usp_markstotal
	@m1 int,
	@m2 int,
	@m3 int,
	@m4 int,
	@m5 int,
	@m6 int
as
begin
	declare 
		@total int,
		@avg int,
		@grade varchar(50)


set @total = (@m1+@m2+@m3+@m4+@m5+@m6)
set @avg = @total/6

if @avg>=85
begin
	set @grade = 'distinction'
end
else if @avg<85 and @avg>=60
begin
	set @grade = 'first class'
	end
else if @avg<60 and @avg>=45
begin
	set @grade = 'second class'
	end
else 
begin
	set @grade = 'fail'
end
select @total as total,@avg as average,@grade as grade
end

execute usp_markstotal 80,45,70,90,30,85
