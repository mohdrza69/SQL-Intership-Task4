CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Department VARCHAR(50),
    Salary INT,
    Age INT
);

INSERT INTO Employees (EmpID, Name, Department, Salary, Age) VALUES
(1, 'Alice', 'HR', 40000, 30),
(2, 'Bob', 'IT', 55000, 28),
(3, 'Charlie', 'Finance', 60000, 35),
(4, 'David', 'IT', 45000, 26),
(5, 'Eva', 'Finance', 70000, 40),
(6, 'Frank', 'HR', 50000, 32);

SELECT Department, SUM(Salary) AS Total_Salary
FROM Employees
GROUP BY Department;
SELECT Department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department;
SELECT Department, AVG(Salary) AS Average_Salary
FROM Employees
GROUP BY Department;
SELECT Department, MAX(Salary) AS Highest_Salary
FROM Employees
GROUP BY Department;
SELECT Department, COUNT(*) AS Employee_Count
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;
SELECT Department, ROUND(AVG(Salary), -3) AS Rounded_Avg_Salary
FROM Employees
GROUP BY Department;
SELECT COUNT(DISTINCT Department) AS Unique_Departments
FROM Employees;

