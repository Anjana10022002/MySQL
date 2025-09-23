DROP TABLE IF EXISTS student;
CREATE TABLE student (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Grade INT NOT NULL
);

INSERT INTO student (StudentName, Age, Department, Grade)
VALUES
    ('Alfred', 23, 'Electronics', 80),
    ('Brenda', 22, 'Computer Science', 90),
    ('Charles', 24, 'Mechanical', 85),
    ('Diana', 21, 'Civil', 88);

SELECT * FROM student
WHERE Age > 20;

SELECT * FROM student
WHERE Department = 'Computer Science' OR Department = 'Physics';

WHERE Grade = 90;

SELECT * FROM student
WHERE Grade BETWEEN 70 AND 90; 