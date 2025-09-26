CREATE TABLE students1(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(100) NOT NULL,
    Score INT NOT NULL,
    Email VARCHAR(100) NOT NULL,
    Phone VARCHAR(100) NOT NULL,
    City VARCHAR(100) NOT NULL,
    Bonus_Points INT
);
INSERT INTO students1 (ID, StudentName, Course,Score, Email, Phone, City, Bonus_Points)
VALUES
(1, 'Asha', 'Python', 85, 'asha@mail.com', '9876543210', 'Chennai', 5),
(2, 'Ravi', 'Python', 90, 'ravi@mail.com', '9876543211', 'Chennai', NULL),
(3, 'Sneha', 'Java', 78, 'sneha@mail.com', '9876543212', 'Mumbai', NULL),
(4, 'Karan', 'Java', 88, 'karan@mail.com', '9876543213', 'Delhi', 2),
(5, 'Divya', 'Python', 95, 'divya@mail.com', '9876543214', 'Mumbai', 4),
(6, 'Manoj', 'JavaScript', 72, 'manoj@mail.com', '9876543215', 'Delhi', NULL);

SELECT Course, COUNT(*) AS total_students FROM students1
GROUP BY Course;

SELECT Course, AVG(Score) AS Avg_Score FROM students1
GROUP BY Course
HAVING AVG(Score) > 80;

SELECT StudentName, Course FROM students1
WHERE City IN ('Chennai', 'Mumbai');

SELECT StudentName FROM students1
WHERE Bonus_Points IS NULL; 

SELECT StudentName AS student_name
FROM students1
WHERE City = 'Chennai'
UNION
SELECT StudentName AS student_name
FROM students1
WHERE City = 'Mumbai';

