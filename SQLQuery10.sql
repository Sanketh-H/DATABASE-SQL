--### Task 2: Online Store Database
--- *Create tables*: Products, Customers, Orders, OrderDetails
-- *Requirements*:
  --- Products include ID, name, category, price, and stock quantity.
  --- Customers include ID, name, email, and city.
  --- Orders include ID, customer ID, order date, and total amount.
  --- OrderDetails link products to orders with quantity and subtotal.
--- *Queries to practice*:
  ----- Find the top 5 best-selling products.
  --- List customers who placed orders in the last 30 days.
  --- Calculate total revenue generated per product category.




CREATE TABLE Products2
(
ProductID INT IDENTITY(1,1) PRIMARY KEY,
ProductName VARCHAR(50),
Category VARCHAR(50),
Price DECIMAL(10,2),
StockQty INT
)

CREATE TABLE Customers2
(
CustomerID INT IDENTITY(1,1) PRIMARY KEY,
CustomerName VARCHAR(50),
Email VARCHAR(100),
City VARCHAR(50)
)


CREATE TABLE Orders2
(
OrderID INT IDENTITY(1,1) PRIMARY KEY,
CustomerID INT,
OrderDate DATE,
TotalAmount DECIMAL(10,2),

FOREIGN KEY (CustomerID)
REFERENCES Customers2(CustomerID)
)


CREATE TABLE OrderDetails2
(
OrderDetailID INT IDENTITY(1,1) PRIMARY KEY,
OrderID INT,
ProductID INT,
Quantity INT,
SubTotal DECIMAL(10,2),

FOREIGN KEY (OrderID)
REFERENCES Orders2(OrderID),

FOREIGN KEY (ProductID)
REFERENCES Products2(ProductID)
)

select * from Products2
select * from Customers2
select *from Orders2
select * from OrderDetails2


INSERT INTO Products2(ProductName,Category,Price,StockQty)
VALUES
('Laptop','Electronics',60000,20),
('Smartphone','Electronics',25000,30),
('Headphones','Electronics',2000,50),
('Shoes','Fashion',3000,40),
('T-Shirt','Fashion',800,60)



INSERT INTO Customers2(CustomerName,Email,City)
VALUES
('Ramu','ramu@gmail.com','Mysore'),
('Sita','sita@gmail.com','Bangalore'),
('Arjun','arjun@gmail.com','Hassan'),
('Priya','priya@gmail.com','Mangalore')


INSERT INTO Orders2(CustomerID,OrderDate,TotalAmount)
VALUES
(1,'2026-03-01',64000),
(2,'2026-03-05',27000),
(3,'2026-03-10',4000),
(4,'2026-03-12',3000)


INSERT INTO OrderDetails2(OrderID,ProductID,Quantity,SubTotal)
VALUES
(1,1,1,60000),
(1,3,2,4000),
(2,2,1,25000),
(2,5,3,2400),
(3,3,2,4000),
(4,4,1,3000)


----- Find the top 5 best-selling products.

SELECT TOP 5 
P.ProductName,
SUM(OD.Quantity) AS TotalSold
FROM OrderDetails2 OD
JOIN Products2 P
ON OD.ProductID = P.ProductID
GROUP BY P.ProductName
ORDER BY TotalSold DESC


--- List customers who placed orders in the last 30 days.

SELECT DISTINCT
C.CustomerName,
C.City,
O.OrderDate
FROM Customers2 C
JOIN Orders2 O
ON C.CustomerID = O.CustomerID
WHERE O.OrderDate >= DATEADD(DAY,-30,GETDATE())





  --- Calculate total revenue generated per product category.

  SELECT
P.Category,
SUM(OD.SubTotal) AS TotalRevenue
FROM Products2 P
JOIN OrderDetails2 OD
ON P.ProductID = OD.ProductID
GROUP BY P.Category