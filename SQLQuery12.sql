SELECT product_name, list_price FROM production.products 
WHERE list_price > (SELECT AVG (list_price) FROM 
production.products WHERE brand_id IN 
(SELECT brand_id FROM production.brands WHERE
brand_name = 'Strider' OR brand_name = 'Trek' )) 
ORDER BY list_price;

select * from production.products
select * from production.brands

select * from production.products where brand_id in(9,6)
select avg(list_price) from production.products where
brand_id in (9,6)

select * from production.products where list_price >= 2450