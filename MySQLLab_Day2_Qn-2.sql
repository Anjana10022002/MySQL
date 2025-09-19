DROP TABLE IF EXISTS student;
CREATE TABLE student (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(50) NOT NULL,
    Age INT NOT NULL,
    Department VARCHAR(50) NOT NULL,
    Grade INT NOT NULL
);

-- Inserting 4 data into the student table
INSERT INTO student (StudentName, Age, Department, Grade)
VALUES
    ('Alfred', 23, 'Electronics', 80),
    ('Brenda', 22, 'Computer Science', 90),
    ('Charles', 24, 'Mechanical', 85),
    ('Diana', 21, 'Civil', 88);



    