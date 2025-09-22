CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(100) NOT NULL,
    FeesPaid INT NOT NULL,
    FeesStatus VARCHAR(20) NOT NULL
);

INSERT INTO Students (StudentName, Course, FeesPaid, FeesStatus)
VALUES
('Alice', 'Web Development', 5000, 'Inactive')
('Bob', 'Data Science', 7000, 'Active'),
('Charlie', 'UI/UX Design', 4000, 'Active');

