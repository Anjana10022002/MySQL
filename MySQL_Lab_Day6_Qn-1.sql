DROP TABLE IF EXISTs books1;
DROP TABLE IF EXISTS bestsellers;
CREATE TABLE books1(
    ID INT NOT NULL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Copies_Sold INT NOT NULL
);
INSERT INTO books1(ID,Title, Author, Genre, Price, Copies_Sold)
VALUES
(1, 'The Silent Patient', 'Alex Michaelides', 'Thriller', 399.00, 1200),
(2, 'Atomic Habits', 'James Clear', 'Self-help', 499.00, 2000),
(3, 'The Psychology of Money', 'Morgan Housel', 'Finance', 350.00, 1800);

CREATE TABLE bestsellers(
    ID INT NOT NULL PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Genre VARCHAR(100) NOT NULL,
    Price DECIMAL(10,2) NOT NULL,
    Copies_Sold INT NOT NULL
);
INSERT INTO bestsellers(ID,Title, Author, Genre, Price, Copies_Sold)
VALUES
(4, 'Ikigai', 'Francesc Miralles', 'Philosophy', 300.00, 2500),
(5, 'Think Like a Monk', 'Jay Shetty', 'Self-help', 450.00, 2200);

SELECT * FROM books1;
SELECT * FROM bestsellers;

SELECT Title, Author FROM books1
UNION
SELECT Title, Author FROM bestsellers;

SELECT * FROM books1
WHERE Price > 400;

SELECT AVG(Price) AS Average_Price FROM books1;

SELECT COUNT(*) AS Number_of_Books FROM books1;

SELECT Title AS `Book Title`, Author AS `Written By`
FROM books1;
