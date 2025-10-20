DROP TABLE IF EXISTS LibraryManagement;
CREATE TABLE LibraryManagement (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Author VARCHAR(50) NOT NUL,
    Price INT NOT NULLL,
    Genre VARCHAR(50) NOT NULL
);

INSERT INTO LibraryManagement (Title, Author, Price, Genre)
VALUES
    ('The Hobbit', 'J.R.R. Tolkien', 350, 'Fantasy'),
    ('Pride and Prejudice', 'Jane Austen', 500, 'Romance'),
    ('Sapiens: A Brief History of Humankind', 'Yuval Noah Harari', 400, 'History'),
    ('A Brief History of Black Holes', 'Dr. Becky Smethurst', 500, 'Science'),
    ('The Great Gatsby', 'F. Scott Fitzgerald', 550, 'Fiction');

SELECT * FROM LibraryManagement
WHERE Price > 400;

SELECT * FROM LibraryManagement
WHERE Genre = 'History' OR Genre = 'Science' OR Genre = 'Fiction';