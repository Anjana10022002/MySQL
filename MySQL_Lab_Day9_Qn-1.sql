CREATE  TABLE books1(
    bookID INT PRIMARY KEY,
    title VARCHAR(100) NOT NULL
);
INSERT INTO books1
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

SELECT books1.bookID, books1.title, borrowers.borrowerName AS borrowedBy FROM books1
LEFT JOIN borrowers
ON books1.bookID = borrowers.bookID;

SELECT borrowers.borrowerID, borrowers.borrowerName, books1.title FROM borrowers
LEFT JOIN books1
ON borrowers.bookID = books1.bookID;

SELECT books1.bookID, books1.title FROM books1
LEFT JOIN  borrowers
ON books1.bookID = borrowers.bookID
WHERE  borrowers.bookID IS NULL;

SELECT
