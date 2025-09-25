DROP TABLE IF EXISTS movies;
CREATE TABLE movies(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    Title VARCHAR(50) NOT NULL,
    Genre VARCHAR(50) NOT NULL,
    Release_Year INT(4) NOT NULL,
    Rating DECIMAL(3,1) NOT NULL,
    Box_Office INT NOT NULL
);
INSERT INTO movies(Title, Genre, Release_Year, Rating, Box_Office)
VALUES
('Inception', 'Sci-Fi', 2010, 8.8, 825),
('The Dark Knight', 'Action', 2008, 9.0, 1004),
('Interstellar', 'Sci-Fi', 2014, 8.6, 677),
('Joker', 'Drama', 2019, 8.4, 1074),
('Dunkirk', 'War', 2017, 7.9, 527);

SELECT Title, Box_Office AS `Earnings(in Cr)` From movies;

SELECT Title AS `Movie Title`, Genre AS `Category`
FROM movies;

SELECT Title, Genre, Rating AS `IMDb Score`
FROM movies
WHERE Genre IN ('Sci-Fi', 'Action');

SELECT Title, Release_Year AS `Release`
FROM movies
WHERE Release_Year BETWEEN 2008 AND 2015; 

SELECT COUNT(*) AS High_Rated_Movies FROM movies
WHERE Rating > 8.5;
