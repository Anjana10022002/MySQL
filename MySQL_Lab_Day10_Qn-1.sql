CREATE TABLE students(
    studentID INT PRIMARY KEY AUTO_INCREMENT,
    studentName VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL
);
CREATE TABLE courses(
    courseID INT PRIMARY KEY AUTO_INCREMENT,
    courseName VARCHAR(100) NOT NULL
);
CREATE TABLE enrollments(
    studentID INT,
    courseID INT,
)