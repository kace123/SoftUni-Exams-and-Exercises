-- 2. Find All the Information About Departments
SELECT * FROM Departments;

-- 3. Find all Department Names
SELECT [Name] FROM Departments;

-- 4. Find Salary of Each Employee
SELECT FirstName, LastName, Salary FROM Employees;

-- 5. Find Full Name of Each Employee
SELECT FirstName, MiddleName, LastName FROM Employees;

-- 6. Find Email Address of Each Employee
SELECT CONCAT(FirstName,'.', LastName, '@softuni.bg') AS [Full Email Address] FROM Employees;

-- 7. Find All Different Employees's Salaries
SELECT Salary FROM Employees
GROUP BY Salary;

-- 8. Find All Information About Employees
SELECT * FROM Employees
WHERE JobTitle = 'Sales Representative'

-- 9. Find Names of All Employees by Salary in Range
SELECT FirstName, LastName, JobTitle FROM Employees
WHERE Salary BETWEEN 20000 AND 30000;

-- 10. Find Names of All Employees
SELECT CONCAT_WS(' ', FirstName, MiddleName, LastName) FROM Employees;

-- 11. Find All Employees Without a Manager
SELECT FirstName, LastName FROM Employees
WHERE ManagerID IS NULL;

-- 12. Find All Employees with a Salary More Than 50000
SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary > 50000
ORDER BY Salary DESC;

-- 13. Find 5 Best Paid Employees
SELECT TOP(5) FirstName, LastName FROM Employees
WHERE Salary > 50000
ORDER BY Salary DESC;

-- 14. Find All Employees Except Marketing
SELECT FirstName, LastName FROM Employees
WHERE DepartmentID != 4;

-- 15. Sort Employees Table
SELECT * FROM Employees
ORDER BY Salary DESC, FirstName, LastName DESC, MiddleName

-- 16. Create View Employees with Salaries
CREATE VIEW V_EmployeesSalaries AS
SELECT FirstName, LastName, Salary
FROM Employees;

-- 17. Create View Employees with Job Title
CREATE VIEW V_EmployeeNameJobTitle AS
SELECT CONCAT_WS(' ', FirstName, MiddleName, LastName) AS [Full Name], JobTitle FROM Employees;

-- 18. Distinct Job Titles
SELECT DISTINCT JobTitle FROM Employees;

-- 19. Find First 10 Started Projects
SELECT TOP(10) * FROM Projects
ORDER BY StartDate, [Name];

-- 20. Last 7 Hired Employees
SELECT TOP(7) FirstName, LastName, HireDate FROM Employees
ORDER BY Employees.HireDate DESC

-- 21. Increase Salaries
BEGIN TRANSACTION

UPDATE Employees
SET Salary += Salary * 0.12
WHERE DepartmentID IN (1, 2, 4, 11)

SELECT [Salary] FROM Employees;

ROLLBACK

-- 22. All Mountain Peaks
SELECT PeakName FROM Peaks
ORDER BY PeakName ASC;

-- 23. Biggest Countries by Population
SELECT TOP(30) CountryName, [Population] FROM Countries
WHERE ContinentCode = 'EU'
ORDER BY [Population] DESC, CountryName

-- 24. *Countries and Currency (Euro / Not Euro)
SELECT Countries.CountryName, Countries.CountryCode,
CASE
WHEN Countries.[CurrencyCode] = 'EUR' THEN 'Euro'
ELSE 'Not Euro'
END AS [Currency] FROM Countries
ORDER BY Countries.CountryName

-- 25. All Diablo Characters
SELECT Name FROM Characters
ORDER BY Name;