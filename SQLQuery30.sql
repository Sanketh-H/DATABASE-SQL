--create a sp to insert data into studentmarks table
--also calcualte total average and grade


--select * from studentmarks

create procedure usp_studentmarks_insert2
	@sname varchar(50),
	@gender varchar(50),
	@branch varchar(50),
	@s1 numeric(8,2),
	@s2 numeric(8,2),
	@s3 numeric(8,2),
	@s4 numeric(8,2),
	@s5 numeric(8,2),
	@s6 numeric(8,2)
	
as
begin
	declare
		@total numeric(8,2),
		@average numeric(8,2),
		@grade varchar(50)

		set @total = @s1+@s2+@s3+@s4+@s5+@s6
		set @average = @total/6
		if @average >= 80
			set @grade = 'A'
		else if @average >= 60
			set @grade = 'B'
		else if @average >= 50
			set @grade = 'C'
		else
			set @grade = 'F'
		insert into studentmarks
		values
			(
			@sname,
			@gender,
			@branch,
			@s1,
			@s2,
			@s3,
			@s4,
			@s5,
			@s6,
			@total,
			@average,
			@grade
					)
		select* from studentmarks
end



--execute usp_studentmarks_insert2 ramu,male,cse,80,65,70,90,50,45