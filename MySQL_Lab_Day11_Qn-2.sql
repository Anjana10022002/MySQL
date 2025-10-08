CREATE TABLE categories (
    categoryID INT AUTO_INCREMENT PRIMARY KEY,
    categoryName VARCHAR(100) NOT NULL
);
INSERT INTO categories (categoryName)
VALUES 
('Fiction'),
('Science'),
('History');
CREATE TABLE books2 (
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    bookName VARCHAR(100) NOT NULL,
    categoryID INT,
    FOREIGN KEY (categoryID) REFERENCES categories(categoryID)
);
CREATE INDEX idx_book_name ON books2(bookName);

SHOW INDEXES FROM books2;
