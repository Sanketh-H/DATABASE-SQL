--### Task 1: Library Management System
--- **Create tables**: `Books`, `Members`, `Loans`
--- **Requirements**:
 -- - Each book has an ID, title, author, genre, and availability status.
  --- Each member has an ID, name, email, and membership date.
  --- Each loan links a book to a member with loan date and return date.
--- **Queries to practice**:
  --- Find all books currently on loan.
  --- List members who have borrowed more than 3 books.
  --- Retrieve overdue books (loan date older than 30 days without return date).

  CREATE TABLE Books
(
    book_id INT PRIMARY KEY IDENTITY(1,1),
    title VARCHAR(100),
    author VARCHAR(100),
    genre VARCHAR(50),
    available VARCHAR(10)   -- 'Yes' or 'No'
);
select * from Books


CREATE TABLE Members
(
    member_id INT PRIMARY KEY IDENTITY(501,1),
    name VARCHAR(100),
    email VARCHAR(100),
    membership_date DATE
);

select * from Members



CREATE TABLE Loans
(
    loan_id INT PRIMARY KEY IDENTITY(1,1),
    book_id INT,
    member_id INT,
    loan_date DATE,
    return_date DATE,

);

select * from Loans

ALTER TABLE Loans
ADD CONSTRAINT fk_book
FOREIGN KEY (book_id)
REFERENCES Books(book_id);

ALTER TABLE Loans
ADD CONSTRAINT fk_member
FOREIGN KEY (member_id)
REFERENCES Members(member_id);



-- inserting values to the tables 
INSERT INTO Books VALUES ('SQL Basics','John Smith','Education','Yes')
INSERT INTO Books VALUES ('Harry Potter','J.K Rowling','Fantasy','Yes')
INSERT INTO Books VALUES ('Data Science','David Miller','Education','Yes')
INSERT INTO Books VALUES ('The Alchemist','Paulo Coelho','Fiction','Yes')
INSERT INTO Books VALUES ('C Programming','Dennis Ritchie','Education','Yes');




INSERT INTO Members VALUES('Amar','amar@email.com','2023-01-01')
INSERT INTO Members VALUES('Rani','rani@email.com','2023-02-01')
INSERT INTO Members VALUES('Tina','tina@email.com','2023-03-01');



INSERT INTO Loans VALUES(1,501,'2024-01-01',NULL)
INSERT INTO Loans VALUES(2,501,'2024-01-10','2024-01-20')
INSERT INTO Loans VALUES(3,502,'2023-12-01',NULL)
INSERT INTO Loans VALUES(4,502,'2023-11-01',NULL)
INSERT INTO Loans VALUES(5,502,'2023-10-01',NULL);





select * from books
select * from members
select * from loans







--- Find all books currently on loan.
SELECT b.title, m.name, l.loan_date FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
INNER JOIN Members m ON l.member_id = m.member_id
WHERE l.return_date IS NULL;





--- Find all books currently on loan.
SELECT b.title FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
WHERE l.return_date IS NULL;



--- List members who have borrowed more than 3 books.
SELECT m.name, COUNT(l.loan_id) AS total_books FROM Loans l
INNER JOIN Members m ON l.member_id = m.member_id
GROUP BY m.name
HAVING COUNT(l.loan_id) >= 3;


--- Retrieve overdue books (loan date older than 30 days without return date).
SELECT b.title, m.name, l.loan_date FROM Loans l
INNER JOIN Books b ON l.book_id = b.book_id
INNER JOIN Members m ON l.member_id = m.member_id
WHERE l.return_date IS NULL
AND l.loan_date < DATEADD(DAY, -30, GETDATE());
