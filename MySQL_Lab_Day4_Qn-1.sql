DROP TABLE IF EXISTS OnlineBookStore;
CREATE TABLE OnlineBookStore (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Price INT NOT NULL,
    Stock INT NOT NULL
);
INSERT INTO OnlineBookStore (Title, Author, Price, Stock)
VALUES
('LearnSQL', 'John Smith', 400, 10),
('Mastering Python', 'Jane Doe', 600, 5),
('HTML & CSS', 'Alan Webb', 300, 8);

UPDATE OnlineBookStore
SET Price = Price + 50, Stock = 12
WHERE Title = 'LearnSQL';

UPDATE OnlineBookStore
SET Stock = Stock - 2 WHERE Price > 500;

DELETE FROM OnlineBookStore 
WHERE BookID = 3;