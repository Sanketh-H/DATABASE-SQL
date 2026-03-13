-- proc to find the area of triangle

create procedure usp_triangle
	@base float,
	@height float
as

begin
	declare
@area float
set @area = 0.5 * @base * @height
select @base as base ,@height as height,@area as area
end

execute usp_triangle 10,20