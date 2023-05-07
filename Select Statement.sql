/*
Select Statement
*, Top, Distinct, Count, As, Max, Min, Avg
*/

--Select from database master
SELECT *
FROM SQLTutorial.dbo.EmployeeSalary

--Select all from database SQLTutorial
SELECT *
FROM EmployeeDemographics

--Select some attributes
SELECT FirstName, LastName
FROM EmployeeDemographics

--Select top 'n' rows
SELECT TOP 5 *
FROM EmployeeDemographics

--Select Unique value
SELECT DISTINCT(EmployeeID)
FROM EmployeeDemographics

SELECT DISTINCT(Gender)
FROM EmployeeDemographics

--Count attribute number & name such column
SELECT COUNT(LastName) AS LastNameCount
FROM EmployeeDemographics

--Select maximum value & name such column
SELECT MAX(Salary) As MaxSalary
FROM EmployeeSalary

--Select minimum value & name such column
SELECT MIN(Salary) As MinSalary
FROM EmployeeSalary

--Calculate average value & name such column
SELECT AVG(Salary) As AvgSalary
FROM EmployeeSalary
