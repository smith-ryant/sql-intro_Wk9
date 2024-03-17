--This query selects the first name and last name of employees who are located in Calgary.
SELECT FirstName, LastName FROM employee WHERE City = 'Calgary';

--This query selects the maximum birth date from the employee table.
SELECT MAX(BirthDate) FROM employee;

--This query selects the minimum birth date from the employee table.
SELECT MIN(BirthDate) FROM employee;

--This query selects the first name and last name of employees who report to Nancy Edwards.
SELECT e1.FirstName, e1.LastName FROM employee e1 INNER JOIN employee e2 ON e1.ReportsTo = e2.EmployeeId WHERE e2.FirstName = 'Nancy' AND e2.LastName = 'Edwards';

--This query counts the number of employees located in Lethbridge.
SELECT COUNT(*) FROM employee WHERE City = 'Lethbridge';
