CREATE TABLE employee(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    employeeName VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    leave INT NOT NULL 
);
CREATE TABLE exam(
    ID INT AUTO_INCREMENT,
    employeeID INT NOT NULL,
    examStatus VARCHAR(20)
);