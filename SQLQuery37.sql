create procedure usp_studentmarks_select_all

as

begin

	select sid,sname,gender,branch,
	s1,s2,s3,s4,s5,s6,tot,average,grade 
	from studentmarks order by sname

	end 

	--execute usp_studentmarks_select_all