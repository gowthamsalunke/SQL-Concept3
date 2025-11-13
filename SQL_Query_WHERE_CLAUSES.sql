CREATE TABLE Employees1 (
    EMPID INT PRIMARY KEY,
    Name VARCHAR(50),
    Depterment VARCHAR(50),
    Salary VARCHAR(50));

    insert into Employees1 (EMPID, Name, Depterment, Salary)
    values (1, 'SAI BABA', 'GURU', 32000),
           (2, 'KHANDOBA', 'KULADEVATH', 38000),
           (3, 'GANESHA', 'FIRST-POOJA', 44000);

           select * from Employees1

SELECT Name, Depterment, Salary
FROM Employees1
WHERE Salary > 20000;

select * from [dbo].[Customer1]

--Example 1: Where Clause with Logical Operators
--To fetch records of  Employee with age equal to 24.


SELECT * FROM Customer1 WHERE Age=24;


--Example 2: WHERE with Comparison Operators
--To fetch the EmpID, Name and Country of Employees with Age greater than 21. 

SELECT CustomerName, Country FROM Customer1 WHERE Age > 21;

--Example 3: Where Clause with BETWEEN Operator

SELECT * FROM Customer1 
WHERE Age BETWEEN 22 AND 24;

--Example 4: Where Clause with LIKE Operator

SELECT * 
FROM Customer1 
WHERE CustomerName LIKE 'L%';

--Example 5: Where Clause with IN Operator

SELECT CustomerName FROM Customer1 WHERE Age IN (21,23);

