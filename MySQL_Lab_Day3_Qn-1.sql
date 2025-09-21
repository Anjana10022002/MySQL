CREATE TABLE Products (
    ProductID INT AUTO_INCREMENT PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    Category VARCHAR(100) NOT NULL,
    Price DECIMAL(10) NOT NULL,
    InStock VARCHAR(10) NOT NULL
);
INSERT INTO Products (ProductName, Category, Price, InStock)    
VALUES
    ('Laptop', 'Electronics', 800, 'Yes'),
    ('Smartphone', 'Electronics', 600, 'No'),
    ('Desk Chair', 'Furniture', 150, 'Yes'),
    ('Dining Table', 'Furniture', 300, 'Yes'),
    ('Headphones', 'Electronics', 200, 'No'),
    ('Bookshelf', 'Furniture', 120, 'Yes'),
    ('Monitor', 'Electronics', 250, 'Yes'),
    ('Sofa', 'Furniture', 700, 'No'),
    ('Tablet', 'Electronics', 400, 'Yes'),
    ('Bed Frame', 'Furniture', 500, 'Yes');
SELECT DISTINCT Category FROM Products;
SELECT * FROM Products
WHERE InStock = 'Yes' AND Price < 500;
SELECT * FROM Products
WHERE InStock = 'No' OR Price > 1000;
SELECT ProductName, Price FROM Products ORDER BY Price DESC;
SELECT ProductName, (Price * 1.18) AS PriceWithTax FROM Products;
