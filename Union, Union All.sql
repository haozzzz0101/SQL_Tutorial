/*
Union, Union All
*/

--Table 1 Insert:
--Insert into SQLTutorial.dbo.EmployeeDemographics VALUES
--(1011, 'Ryan', 'Howard', 26, 'Male'),
--(NULL, 'Holly', 'Flax', NULL, NULL),
--(1013, 'Darryl', 'Philbin', NULL, 'Male')

--Table 3 Query:
--Create Table SQLTutorial.dbo.WareHouseEmployeeDemographics 
--(EmployeeID int, 
--FirstName varchar(50), 
--LastName varchar(50), 
--Age int, 
--Gender varchar(50)
--)

--Table 3 Insert:
--Insert into SQLTutorial.dbo.WareHouseEmployeeDemographics VALUES
--(1013, 'Darryl', 'Philbin', NULL, 'Male'),
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female')

--Compared with Full Outer Join, Union will automatically delecte deducation rows
Select *
From SQLTutorial.dbo.EmployeeDemographics
Union
Select *
From SQLTutorial.dbo.WareHouseEmployeeDemographics

--Compared with Union, Union All will NOT automatically delecte deducation rows
Select *
From SQLTutorial.dbo.EmployeeDemographics
Union All
Select *
From SQLTutorial.dbo.WareHouseEmployeeDemographics
Order By EmployeeID

--Union Can only apply for first attributes
Select EmployeeID, FirstName, Age
From SQLTutorial.dbo.EmployeeDemographics
Union
Select EmployeeID, JobTitle, Salary
From SQLTutorial.dbo.EmployeeSalary
Order By EmployeeID