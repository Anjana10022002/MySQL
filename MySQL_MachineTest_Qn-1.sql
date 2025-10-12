DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    ID INT AUTO_INCREMENT PRIMARY KEY,
    employeeName VARCHAR(100) NOT NULL,
    department VARCHAR(100) NOT NULL,
    leaves INT NOT NULL 
);
INSERT INTO employee(employeeName, department, leaves)
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
    ID INT AUTO_INCREMENT PRIMARY Key,
    employeeID INT NOT NULL,
    examStatus VARCHAR(20)

);
INSERT INTO exam(employeeID, examStatus)
VALUES
(2,"Pass"),
(5, "Fail"),
(1, "Fail"),
(8,"Pass"),
(3,"Pass"),
(1,"Pass"),
(6, "Fail"),
(9,"Pass"),
(10,"Pass");

SELECT * FROM employee
WHERE leaves > 5 AND department = "Sales";

SELECT COUNT(department) FROM employee
WHERE department = "Operations";

SELECT department, COUNT(*) AS totalEmployees FROM employee
GROUP BY department;
