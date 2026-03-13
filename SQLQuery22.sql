--procedure to find the netprice of an item
--input param : price and discount

create procedure usp_calc_netprice
	@price numeric(8,2),
	@dis numeric(5,2)
as

begin
	
	declare
		@damt numeric(8,2),
		@netprice numeric(8,2)

	set @damt = @price * (@dis/100.0)
	set @netprice = @price - @damt
	select @price as Price, @damt as Discount, @netprice as Netprice
end

execute usp_calc_netprice 10000,10