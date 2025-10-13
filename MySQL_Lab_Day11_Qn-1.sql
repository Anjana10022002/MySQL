CREATE TABLE authors(
    authorID INT PRIMARY KEY AUTO_INCREMENT,
    authorName VARCHAR(100) NOT NULL
);
INSERT INTO authors(authorName) 
VALUES 
('Author 1'), ('Author 2'), ('Author 3');

CREATE TABLE book(
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    bookTitle VARCHAR(100) NOT NULL,
    authorID INT,
    FOREIGN KEY(authorID) REFERENCES authors(authorID)
);
INSERT INTO book(bookTitle, authorID) 
VALUES 
('Book A', 1), 
('Book B', 2), 
('Book C', 1), 
('Book D', 3), 
('Book E', 2);

CREATE INDEX idx_author_id ON book(authorID);