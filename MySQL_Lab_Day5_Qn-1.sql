CREATe TABLE mobiles(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Brand VARCHAR(50) NOT NULL,
    Model VARCHAR(50) NOT NULL,
    Price INT(10) NOT NULL,
    Stock INT(100) NOT NULL
);
INSERT INTO mobiles(ID, Brand, Model, Price, Stock)
VALUES
( 'Samsung', 'Galaxy M14', 12000, 30), 
('Redmi', 'Note 12', 15000, 25), 
('Realme', 'Narzo 50', 13000, 20),
('Samsung', 'Galaxy A23', 18000, 10);

SELECT * FROM mobiles 
WHERE cost > 130000 OR stock < 15;

