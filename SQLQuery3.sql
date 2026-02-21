select * from emptable
--select from tablename where expression 
--select all the rows from the table which matches the given expression(filtering the rows)

select * from emptable where place = 'hassan'
select * from emptable where salary <=50000

--logical operators : and ,or,not

select * from emptable where salary<=50000 and place ='mangalore'
select * from emptable where designation = 'developer' and gender = 'male'

--to get the rows whose place is hassan mysore 

select * from emptable where place='hassan' or place='mysore'
--in
select * from emptable where place in('hassan','mysore')