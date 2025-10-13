CREATE TABLE authors(
    authorID INT PRIMARY KEY AUTO_INCREMENT,
    authorName VARCHAR(100) NOT NULL
);
CREATE TABLE book(
    bookID INT AUTO_INCREMENT PRIMARY KEY,
    bookTitle VARCHAR(100) NOT NULL,
    authorID INT,
    FOREIGN KEY(authorID) REFERENCES authors(authorID)
);
CREATE INDEX idx_author_id ON book(authorID);