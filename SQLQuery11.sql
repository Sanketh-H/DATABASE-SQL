--views : logical table

select * from EmployeeMaster2

select e.idemployee, e.empname, p.placename from
EmployeeMaster2 e
inner join placemaster2 p on e.idplace = p.idplace

--create view view name as 
--query

create view vw_empview as 
select e.idemployee, e.empname, p.placename from
EmployeeMaster2 e
inner join placemaster2 p on e.idplace = p.idplace

select * from vw_empview
select * from vw_empview where placename = 'Hassan'

select count(*),placename from vw_empview
group by placename



--- Find all books currently on loan.
--creating view for above querry
create view vw_loanview as 
SELECT b.title FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL;

select * from vw_loanview

--- List members who have borrowed more than 3 books.
-- creating view for above querry
create view vw_borrowedview as 
SELECT m.name, COUNT(l.loan_id) AS total_books FROM Loans l
INNER JOIN Members m ON l.member_id = m.member_id
GROUP BY m.name
HAVING COUNT(l.loan_id) >= 3;

select * from vw_borrowedview



--- Retrieve overdue books (loan date older than 30 days without return date).
--creating view for above querry
create view vw_retrieveview as 
SELECT b.title, m.name, l.loan_date FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
INNER JOIN Members m ON l.member_id = m.member_id
WHERE l.return_date IS NULL
AND l.loan_date < DATEADD(DAY, -30, GETDATE());

select * from vw_retrieveview


select *from vw_loanview
select * from vw_borrowedview
select * from vw_retrieveview