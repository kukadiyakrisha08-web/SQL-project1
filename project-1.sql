CREATE DATABASE DataDigger;
USE DataDigger;
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY AUTO_INCREMENT,
    Name VARCHAR(100),
    Email VARCHAR(100),
    Address VARCHAR(200)
);

SHOW TABLES;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
+----------------------+

DESC Customers;
+------------+--------------+------+-----+---------+----------------+
| Field      | Type         | Null | Key | Default | Extra          |
+------------+--------------+------+-----+---------+----------------+
| CustomerID | int          | NO   | PRI | NULL    | auto_increment |
| Name       | varchar(100) | YES  |     | NULL    |                |
| Email      | varchar(100) | YES  |     | NULL    |                |
| Address    | varchar(200) | YES  |     | NULL    |                |
+------------+--------------+------+-----+---------+----------------+

INSERT INTO Customers (Name, Email, Address)
VALUES
('Alice', 'alice@gmail.com', 'Ahmedabad'),
('Rahul', 'rahul@gmail.com', 'Surat'),
('Priya', 'priya@gmail.com', 'Vadodara'),
('John', 'john@gmail.com', 'Mumbai'),
('Neha', 'neha@gmail.com', 'Rajkot');

SELECT * FROM Customers;
+------------+-------+-----------------+-----------+
| CustomerID | Name  | Email           | Address   |
+------------+-------+-----------------+-----------+
|          1 | Alice | alice@gmail.com | Ahmedabad |
|          2 | Rahul | rahul@gmail.com | Surat     |
|          3 | Priya | priya@gmail.com | Vadodara  |
|          4 | John  | john@gmail.com  | Mumbai    |
|          5 | Neha  | neha@gmail.com  | Rajkot    |
+------------+-------+-----------------+-----------+

SELECT * 
FROM Customers
WHERE Name = 'Alice';
+------------+-------+-----------------+-----------+
| CustomerID | Name  | Email           | Address   |
+------------+-------+-----------------+-----------+
|          1 | Alice | alice@gmail.com | Ahmedabad |
+------------+-------+-----------------+-----------+

UPDATE Customers
SET Address = 'Gandhinagar'
WHERE CustomerID = 2;

SELECT * FROM Customers;
+------------+-------+-----------------+-------------+
| CustomerID | Name  | Email           | Address     |
+------------+-------+-----------------+-------------+
|          1 | Alice | alice@gmail.com | Ahmedabad   |
|          2 | Rahul | rahul@gmail.com | Gandhinagar |
|          3 | Priya | priya@gmail.com | Vadodara    |
|          4 | John  | john@gmail.com  | Mumbai      |
|          5 | Neha  | neha@gmail.com  | Rajkot      |
+------------+-------+-----------------+-------------+

DELETE FROM Customers
WHERE CustomerID = 5;

SELECT * FROM Customers;
+------------+-------+-----------------+-------------+
| CustomerID | Name  | Email           | Address     |
+------------+-------+-----------------+-------------+
|          1 | Alice | alice@gmail.com | Ahmedabad   |
|          2 | Rahul | rahul@gmail.com | Gandhinagar |
|          3 | Priya | priya@gmail.com | Vadodara    |
|          4 | John  | john@gmail.com  | Mumbai      |
+------------+-------+-----------------+-------------+

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY AUTO_INCREMENT,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10,2),

    FOREIGN KEY (CustomerID)
    REFERENCES Customers(CustomerID)
);
INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
(1, '2026-09-01', 500.00),
(2, '2026-09-05', 800.00),
(1, '2026-09-10', 1200.00),
(3, '2026-09-15', 650.00),
(4, '2026-09-20', 950.00);

SELECT * FROM Orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2026-09-01 |      500.00 |
|       2 |          2 | 2026-09-05 |      800.00 |
|       3 |          1 | 2026-09-10 |     1200.00 |
|       4 |          3 | 2026-09-15 |      650.00 |
|       5 |          4 | 2026-09-20 |      950.00 |
+---------+------------+------------+-------------+

SHOW TABLES;
+----------------------+
| Tables_in_datadigger |
+----------------------+
| customers            |
| orders               |
+----------------------+

DESC Orders;
+-------------+---------------+------+-----+---------+----------------+
| Field       | Type          | Null | Key | Default | Extra          |
+-------------+---------------+------+-----+---------+----------------+
| OrderID     | int           | NO   | PRI | NULL    | auto_increment |
| CustomerID  | int           | YES  | MUL | NULL    |                |
| OrderDate   | date          | YES  |     | NULL    |                |
| TotalAmount | decimal(10,2) | YES  |     | NULL    |                |
+-------------+---------------+------+-----+---------+----------------+

SELECT * FROM Orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2026-09-01 |      500.00 |
|       2 |          2 | 2026-09-05 |      800.00 |
|       3 |          1 | 2026-09-10 |     1200.00 |
|       4 |          3 | 2026-09-15 |      650.00 |
|       5 |          4 | 2026-09-20 |      950.00 |
+---------+------------+------------+-------------+

SELECT * FROM Orders
WHERE OrderID = 1;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
|       1 |          1 | 2026-09-01 |      500.00 |
+---------+------------+------------+-------------+

UPDATE Orders
SET TotalAmount = 1000.00
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 1;

INSERT INTO Orders (CustomerID, OrderDate, TotalAmount)
VALUES
(1, '2026-09-01', 500.00),
(2, '2026-09-05', 800.00),
(1, '2026-09-10', 1200.00),
(3, '2026-09-15', 650.00),
(4, '2026-09-20', 950.00);

SELECT * FROM Orders;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
| 1       | 1          | 2026-09-01 | 500.00      |
| 2       | 2          | 2026-09-05 | 800.00      |
| 3       | 1          | 2026-09-10 | 1200.00     |
| 4       | 3          | 2026-09-15 | 650.00      |
| 5       | 4          | 2026-09-20 | 950.00      |
+---------+------------+------------+-------------+

SELECT * FROM Orders
WHERE OrderID = 1;
+---------+------------+------------+-------------+
| OrderID | CustomerID | OrderDate  | TotalAmount |
+---------+------------+------------+-------------+
| 1       | 1          | 2026-09-01 | 500.00      |
+---------+------------+------------+-------------+

UPDATE Orders
SET TotalAmount = 1000.00
WHERE OrderID = 1;

DELETE FROM Orders
WHERE OrderID = 1;

CREATE TABLE Products (
    ProductID INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(100),
    Price DECIMAL(10,2),
    Stock INT
);

INSERT INTO Products (ProductName, Price, Stock)
VALUES
('Laptop', 50000.00, 10),
('Mouse', 800.00, 25),
('Keyboard', 1500.00, 15),
('Monitor', 12000.00, 8),
('Headphones', 2500.00, 20);

SELECT * FROM Products;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
| 1         | Laptop      | 50000.00 | 10    |
| 2         | Mouse       |   800.00 | 25    |
| 3         | Keyboard    |  1500.00 | 15    |
| 4         | Monitor     | 12000.00 | 8     |
| 5         | Headphones  |  2500.00 | 20    |
+-----------+-------------+----------+-------+

SELECT * FROM Products
ORDER BY Price DESC;
+-----------+-------------+----------+-------+
| ProductID | ProductName | Price    | Stock |
+-----------+-------------+----------+-------+
| 1         | Laptop      | 50000.00 | 10    |
| 4         | Monitor     | 12000.00 | 8     |
| 5         | Headphones  | 2500.00  | 20    |
| 3         | Keyboard    | 1500.00  | 15    |
| 2         | Mouse       | 800.00   | 25    |
+-----------+-------------+----------+-------+

UPDATE Products
SET Price = 900.00
WHERE ProductID = 2;

SELECT * FROM Products
WHERE Stock = 0;
SELECT * FROM Products
WHERE Price BETWEEN 500 AND 2000;
Mouse      900.00
Keyboard   1500.00

SELECT MAX(Price) AS HighestPrice
FROM Products;
+--------------+
| HighestPrice |
+--------------+
| 50000.00     |
+--------------+

SELECT MIN(Price) AS LowestPrice
FROM Products;
+-------------+
| LowestPrice |
+-------------+
| 900.00      |
+-------------+

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY AUTO_INCREMENT,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    SubTotal DECIMAL(10,2),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

INSERT INTO OrderDetails (OrderID, ProductID, Quantity, SubTotal)
VALUES
(2, 2, 2, 1800.00),
(3, 3, 1, 1500.00),
(3, 4, 2, 24000.00),
(4, 5, 1, 2500.00),
(5, 2, 3, 2700.00);

SELECT * FROM OrderDetails
WHERE OrderID = 2;
+----------------+---------+-----------+----------+----------+
| OrderDetailID  | OrderID | ProductID | Quantity | SubTotal |
+----------------+---------+-----------+----------+----------+
| 1              | 2       | 2         | 2        | 1800.00  |
+----------------+---------+-----------+----------+----------+

SELECT SUM(SubTotal) AS TotalRevenue
FROM OrderDetails;
+-------------+
| TotalRevenue|
+-------------+
| 32500.00    |
+-------------+

SELECT ProductID, SUM(Quantity) AS TotalQuantity
FROM OrderDetails
GROUP BY ProductID
ORDER BY TotalQuantity DESC
LIMIT 3;
+-----------+---------------+
| ProductID | TotalQuantity |
+-----------+---------------+
| 2         | 5             |
| 4         | 2             |
| 3         | 1             |
+-----------+---------------+

SELECT ProductID, COUNT(*) AS TimesOrdered
FROM OrderDetails
GROUP BY ProductID;
+-----------+--------------+
| ProductID | TimesOrdered |
+-----------+--------------+
| 2         | 2            |
| 3         | 1            |
| 4         | 1            |
| 5         | 1            |
+-----------+--------------+

SELECT
    MAX(TotalAmount) AS HighestAmount,
    MIN(TotalAmount) AS LowestAmount,
    AVG(TotalAmount) AS AverageAmount
FROM Orders;
+---------------+-------------+---------------+
| HighestAmount | LowestAmount| AverageAmount  |
+---------------+-------------+---------------+
| 1200.00       | 650.00      | 900.00        |
+---------------+-------------+---------------+

DELETE FROM Products
WHERE Stock = 0;

SELECT ProductID, COUNT(*) AS TimesSold
FROM OrderDetails
WHERE ProductID = 2;
+-----------+----------+
| ProductID | TimesSold|
+-----------+----------+
| 2         | 2        |
+-----------+----------+



