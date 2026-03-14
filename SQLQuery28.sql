--procedure to update hra and cca
--hra 10% of salary
--cca 7.5% of salary





create procedure usp_calc_hra_cca1
	@hra numeric(10,2),
	@cca numeric(10,2)
as

begin
	update emptable5
	set hra = salary * (@hra/100.0),
	cca = salary * (@cca /100.0)

	select * from emptable5
end

execute usp_calc_hra_cca1 10,10