/*
Aliasing
*/

--Rename FirstName when selecting
Select FirstName As Fname
From SQLTutorial.dbo.EmployeeDemographics

--We can even rename attribute without As
Select FirstName Fname
From SQLTutorial.dbo.EmployeeDemographics

--We can even rename multi-attributes together (use '+' & ' ')
Select FirstName + ' ' + LastName As FullName
From SQLTutorial.dbo.EmployeeDemographics

--We can even rename tables
Select a.EmployeeID, a.FirstName, a.LastName, b.JobTitle, c.Age
From SQLTutorial.dbo.EmployeeDemographics a
Left Join SQLTutorial.dbo.EmployeeSalary b
	On a.EmployeeID = b.EmployeeID
Left Join SQLTutorial.dbo.WareHouseEmployeeDemographics c
	On a.EmployeeID = c.EmployeeID