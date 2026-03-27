-- functions

--create function functioname (parameters)
	--returns data type
	--as
	--being

	--end

create function udf_calculate_discount
	(
		@itemprice numeric(10,2),
		@dis numeric(10,2)
	)
	returns numeric(10,2)

	as
	begin
		declare 
			@netprice numeric(10,2),
			@damount numeric(10,2)

			set @damount = @itemprice * (@dis/100.0)
			set @netprice = @itemprice - @damount
			return @netprice
	end



	