DROP TABLE IF EXISTS books;
CREATE TABLE books(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);
INSERT INTO books(Title, Author, Price, Stock)
VALUES
('The Alchemist', 'Paulo Coelho', 350, 50),
('Atomic Habits', 'James Clear', 450, 40),
('The Psychology of Money', 'Morgan Housel', 400, 30),
('Ikigai', 'Francesc Miralles', 300, 60),
('Deep Work', 'Cal Newport', 500, 20);

SELECT * FROM books 
WHERE price < 450 AND stock > 30;

UPDATE books
SET stock = 45, price = 420
WHERE title = 'Deep Work';

DELETE FROM books
WHERE title = 'Ikigai';

SELECT AVG(price) AS Average_Price, SUM(stock) AS Total_Stock
FROM books;

SELECT * FROM books
ORDER BY price DESC
LIMIT 3;