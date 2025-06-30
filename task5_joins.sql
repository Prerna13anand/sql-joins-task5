-- PART 1: SETUP - CREATE TABLES AND INSERT DATA
CREATE TABLE Customers (
    CustomerID INTEGER PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    City VARCHAR(50)
);

CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    CustomerID INTEGER,
    OrderDate DATE,
    ShipperID INTEGER
);

CREATE TABLE Shippers (
    ShipperID INTEGER PRIMARY KEY,
    ShipperName VARCHAR(100) NOT NULL
);

INSERT INTO Customers (CustomerID, FirstName, LastName, City) VALUES
(1, 'Arav', 'Mehta', 'Mumbai'),
(2, 'Vishu', 'Joshi', 'Delhi'),
(3, 'Arnav', 'Gupta', 'Mumbai'),
(4, 'Ashu', 'Sharma', 'Bengaluru'); 


INSERT INTO Orders (OrderID, CustomerID, OrderDate, ShipperID) VALUES
(1001, 1, '2024-06-20', 1),
(1002, 3, '2024-06-22', 2),
(1003, 1, '2024-06-25', 1),
(1004, 2, '2024-06-28', 3);


INSERT INTO Shippers (ShipperID, ShipperName) VALUES
(1, 'Speedy Express'),
(2, 'Federal Shipping'),
(3, 'United Package');



-- PART 2: JOIN QUERIES 

-- Query 1: INNER JOIN
-- Show only the customers who have placed an order.
SELECT
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- Query 2: LEFT JOIN
-- Show ALL customers, and the orders they have placed, if any.

SELECT
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;


-- Query 3: RIGHT JOIN 
-- Show all orders, and the customer who placed them.
SELECT
    Customers.FirstName,
    Customers.LastName,
    Orders.OrderID,
    Orders.OrderDate
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


-- Query 4: FULL OUTER JOIN 
-- Show every customer and every order.
SELECT Customers.FirstName, Customers.LastName, Orders.OrderID, Orders.OrderDate
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
UNION
SELECT Customers.FirstName, Customers.LastName, Orders.OrderID, Orders.OrderDate
FROM Orders
LEFT JOIN Customers ON Orders.CustomerID = Customers.CustomerID;


-- Query 5: Joining Three Tables
-- Show the customer name, the order ID, and the name of the shipper.
SELECT
    Customers.FirstName,
    Orders.OrderID,
    Shippers.ShipperName
FROM Customers
INNER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
INNER JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID;