CREATE TABLE employees(
    ID INT PRIMARY KEY,
    employeeName VARCHAR(50) NOT NULL
);
INSERT INTO employees(ID, employeeName)
VALUES
(1,"Anjali"),
(2, "Rohan"),
(3, "Meena");
CREATE TABLE departments(
    empID INT PRIMARY KEY,
    departmentName VARCHAR(50) NOT NULL
);
INSERT INTO departments(empID, departmentName)
VALUES
(1, "HR"),
(2, "IT"),
(3, "Finance")