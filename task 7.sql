--
-- File generated with SQLiteStudio v3.4.17 on Fri Oct 3 12:56:25 2025
--
-- Text encoding used: System
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Departments
CREATE TABLE Departments (
    DepartmentID   INT           PRIMARY KEY,
    DepartmentName VARCHAR (100),
    Location       VARCHAR (100) 
);


-- Table: Employees
CREATE TABLE Employees (
    EmployeeID   INT             PRIMARY KEY,
    Name         VARCHAR (100),
    DepartmentID INT,
    Salary       DECIMAL (10, 2),
    FOREIGN KEY (
        DepartmentID
    )
    REFERENCES Departments (DepartmentID) 
);


-- View: DepartmentSalarySummary
CREATE VIEW DepartmentSalarySummary AS
    SELECT d.DepartmentName,
           AVG(e.Salary) AS AvgSalary
      FROM Employees e
           JOIN
           Departments d ON e.DepartmentID = d.DepartmentID
     GROUP BY d.DepartmentName;


-- View: EmployeeDepartment
CREATE VIEW EmployeeDepartment AS
    SELECT e.EmployeeID,
           e.Name,
           d.DepartmentName,
           d.Location,
           e.Salary
      FROM Employees e
           JOIN
           Departments d ON e.DepartmentID = d.DepartmentID;


-- View: EmployeeSalaries
CREATE VIEW EmployeeSalaries AS
    SELECT Name,
           Salary
      FROM Employees;


-- View: HighEarners
CREATE VIEW HighEarners AS
    SELECT Name,
           Salary
      FROM Employees
     WHERE Salary > 80000;


COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
