select * from emptable
select * from emptable where salary>=50000 and salary <=80000


--between---
select * from emptable where salary between 50000 and 80000

--to get all the employes whose name starting letter 's'
select * from emptable where empname='s'
---sql will look name s
-- sql will look for the name s but we need name starting from s 


--like and %: % wild card character 

select * from emptable where empname like 's%'

-- to get all the rows whose name ending with letter 'a'
select * from emptable where empname like '%a'

select * from emptable where empname like '%ha'
select * from emptable where empname like '%e%'
select * from emptable where empname like '%e%' and place = 'hassan'

select * from emptable where place like 'm%'
--------------------------------------------------------------------------------------------------------------------
-- order by : sorting (arranging data in a meaning full order  it may be ascending or desc order or 
--alphabetic  or numerical mode )by defualt it will be in ascending order 

select * from emptable order by empname
select * from emptable order by empname desc
select * from emptable order by salary
select * from emptable order by salary,empname


select * from emptable where designation ='developer'
order by empname
----------------------------------------------------------------------------------------------------------------
--- sum,min,max,avg,count 
select SUM(salary)from emptable
select SUM(salary)from emptable where gender='male'

-- to get the sum of all developers 

select SUM(salary) from emptable where designation='developer'

select MIN(salary),MAX(salary)from emptable
select AVG(salary)from emptable

---count 
select COUNT(*) from emptable where gender='female'
select COUNT(designation) from emptable where designation = 'developer'

---------------------------------------------------------------------------------------------------
--distinct :
select distinct designation from emptable
select distinct gender from emptable
select distinct place from emptable
--------------------------------------------------------------------------------------------------
--grouping query:group by and having 
-- to get sum of salary designation wise 
select designation,SUM(salary)from emptable 
group by designation
-- to count number of employess based on place 
select place,COUNT(place)from emptable
group by place

-- to find the sum of salary based on designation and gender 
select designation ,gender,SUM(salary)from emptable
group by designation,gender
order by designation


---having : to filter the result of group by clause.
select designation,gender,SUM(salary)from emptable
group by designation,gender
having designation ='developer'