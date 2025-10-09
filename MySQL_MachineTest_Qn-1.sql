CREATE TABLE employee(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    employeeName VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    leave INT NOT NULL 
);
INSERT INTO employee(employeeName, department, leave)
VALUES
("Raju", "Sales", 1),
("Sangeetha", "Sales", 3), 
("Vinoy", "Operations", 8), 
("Abey", "Packing", 2),
("Thomas", "Packing", 1),
("Muneer", "Operations", 7),
("Aparna", "Sales", 3),
("Abid", "Operations", 9),
("Fathima", "Sales", 11),
("Varghese", "Operations", 14);

CREATE TABLE exam(
    ID INT AUTO_INCREMENT,
    employeeID INT NOT NULL,
    examStatus VARCHAR(20)
);
