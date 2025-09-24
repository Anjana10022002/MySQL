DROP TABLE IF EXISTS mobiles;
CREATe TABLE mobiles(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);
INSERT INTO mobiles(Brand, Model, Price, Stock)
VALUES
('Samsung', 'Galaxy M14', 12000, 30), 
('Redmi', 'Note 12', 15000, 25), 
('Realme', 'Narzo 50', 13000, 20),
('Samsung', 'Galaxy A23', 18000, 10);

SELECT * FROM mobiles 
WHERE price > 13000 OR stock < 15;

UPDATE mobiles
SET stock = stock + 5, price = 12500
WHERE Model = "Narzo 50"

DELETE FROM mobiles
WHERE ID = 2;

SELECT MAX(price) AS HighestPrice, MIN(price) AS LowestPrice
FROM mobiles;

SELECT SUM(stock) AS TotalStock 
FROM mobiles;

SELECT * FROM mobiles
ORDER BY price DESC
LIMIT 2;


