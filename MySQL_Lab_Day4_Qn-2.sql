DROP TABLE IF EXISTS Students;
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    StudentName VARCHAR(100) NOT NULL,
    Course VARCHAR(100) NOT NULL,
    FeesPaid INT NOT NULL,
    FeesStatus VARCHAR(20) NOT NULL
);

INSERT INTO Students (StudentName, Course, FeesPaid, FeesStatus)
VALUES
('Alice', 'Web Development', 5000, 'Inactive'),
('Bob', 'Data Science', 7000, 'Active'),
('Charlie', 'UI/UX Design', 4000, 'Active');

SELECT * FROM Students
WHERE FeesPaid > 5000;

UPDATE Students
SET FeesStatus = 'Active'
WHERE Course = 'Web Development';

UPDATE Students
SET FeesPaid = FeesPaid + 1000
WHERE Course = 'Data Science';

UPDATE Students
SET FeesStatus = "Inactive", FeesPaid = FeesPaid - 500
WHERE StudentID = 3;

DELETE FROM Students
WHERE StudentID = 2;

DELETE FROM Students
WHERE FeesStatus = 'Inactive';  