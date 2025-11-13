--Examples of HAVING Clause

CREATE TABLE Employee (
  EmployeeId int,
  Name varchar(50),
  Gender varchar(10),
  Salary int,
  Department varchar(20),
  Experience int );

  INSERT INTO Employee (EmployeeId, Name, Gender, Salary, Department, Experience)
VALUES  (1, 'Emily Johnson', 'Female', 45000, 'IT', 2),
               (2, 'Michael Smith', 'Male', 65000, 'Sales', 5),
               (3, 'Olivia Brown', 'Female', 55000, 'Marketing', 4),
               (4, 'James Davis', 'Male', 75000, 'Finance', 7),
               (5, 'Sophia Wilson', 'Female', 50000, 'IT', 3);

SELECT * FROM Employee;

--Example 1: Filter Total Salary

SELECT SUM(Salary) AS Total_Salary
FROM Employee
GROUP BY (SELECT 1)
HAVING SUM(Salary) >= 250000;

--Example 2: Filter Average Salary

SELECT Department, AVG(Salary) AS AverageSalary
FROM Employee
GROUP BY Department
HAVING AVG(Salary) > 55000;


--Example 3: Filter Maximum Salary

SELECT MAX(Salary) AS Max_Salary
FROM Employee
GROUP BY (SELECT 1)
HAVING MAX(Salary) > 70000;

--Example 4: Filter Minimum Experience

SELECT MIN(Experience) AS Min_Experience
FROM Employee
GROUP BY (SELECT 1)
HAVING MIN(Experience) < 3;

--Example 5: Multiple Conditions

SELECT SUM(Salary) AS Total_Salary, AVG(Salary) AS Average_Salary
FROM Employee
GROUP BY (SELECT 1)
HAVING SUM(Salary) >= 250000 AND AVG(Salary) > 55000;