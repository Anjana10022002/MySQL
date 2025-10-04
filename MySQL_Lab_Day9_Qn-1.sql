CREATE  TABLE books(
    bookID INT PRIMARY KEY,
    title VARCH(100) NOT NULL
);
INSERT INTO books
VALUES
(1, "The Alchemist"),
(2, "The Power of Now"),
(3, "Think and Grow Rich"),
(4, "CLean Code");
CREATE TABLE borrowers(
    borrowerID INT PRIMARY KEY,
    borrowerName VARCHAR(50) NOT NULL,
    bookID INT
);
INSERT INTO borrowers
VALUES
(101, "ALice", 1),
(102, "Bob", 2),
(103, "Charlie", NULL);

SELECT title FROM books
LEFT JOIN borrowers
ON books.title = borrowers.borrowerName


