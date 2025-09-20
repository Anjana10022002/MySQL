CREATE TABLE BookStore (
    BookID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(100) NOT NULL,
    Price DECIMAL(10, 2) NOT NULL,
    StockStatus VARCHAR(20) NOT NULL,
    Genre VARCHAR(50) NOT NULL
);

INSERT INTO BookStore (Title, Author, Price, StockStatus, Genre)
VALUES
    ('1984', 'George Orwell', 450, 'In Stock', 'Dystopian'),
    ('To Kill a Mockingbird', 'Harper Lee', 300, 'Out of Stock', 'Classic'),
    ('The Catcher in the Rye', 'J.D. Salinger', 350, 'In Stock', 'Classic'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 500, 'In Stock', 'Fiction'),
    ('Brave New World', 'Aldous Huxley', 400, 'In Stock', 'Dystopian'),
    ('Moby Dick', 'Herman Melville', 450, 'In Stock', 'Classic'),
    ('Game of Thrones', 'George R.R. Martin', 950, 'Out of Stock', 'Fantasy'),
    ('Rich Dad Poor Dad', 'Robert Kiyosaki', 250, 'In Stock', 'Finance'),
    ('Think and Grow Rich', 'Napoleon Hill', 700, 'In Stock', 'Finance'),
    ('The Alchemist', 'Paulo Coelho', 350, 'In Stock', 'Fiction'),
    ('Atomic Habits', 'James Clear', 450, 'In Stock', 'Self-help'),
    ('Clean Code', 'Robert C. Martin', 800, 'In Stock', 'Programming'),
    ('The Pragmatic Programmer', 'Andrew Hunt', 750, 'Out of Stock', 'Programming'),
    ('Harry Potter', 'J.K. Rowling', 300, 'In Stock', 'Fantasy'),
    ('The Hobbit', 'J.R.R. Tolkien', 400, 'In Stock', 'Fantasy');


SELECT DISTINCT Genre FROM BookStore;

SELECT * FROM BookStore
WHERE StockStatus = 'In Stock' AND Price < 400;

SELECT * FROM BookStore
WHERE StockStatus = 'Out of Stock' OR Price > 700;

SELECT Title, Price, (Price * 1.10) AS PriceWithGST FROM BookStore;

SELECT Title, Price, StockStatus FROM BookStore ORDER BY Price DESC;