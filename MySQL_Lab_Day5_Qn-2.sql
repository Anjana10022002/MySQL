CREATe TABLEbooks(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Price INT(10) NOT NULL,
    Stock INT(100) NOT NULL
);
INSERT INTO books(ID, Title, Author, Price, Stock)
VALUES
('The Alchemist', 'Paulo Coelho', 350, 50)
('Atomic Habits', 'James Clear', 450, 40)
('The Psychology of Money', 'Morgan Housel', 400, 30)
('Ikigai', 'Francesc Miralles', 300, 60)
('Deep Work', 'Cal Newport', 500, 20)

SELECT * FROM books 
WHERE price > 450 OR stock < 30;