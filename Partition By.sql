/*
Partition By
*/

Select FirstName, LastName, Gender, Salary,
Count(Gender) Over (Partition By Gender) as TotalGender
From SQLTutorial.dbo.EmployeeDemographics dem
Join SQLTutorial.dbo.EmployeeSalary sal
	On dem.EmployeeID = sal.EmployeeID

--Group By cannot do partition job
Select FirstName, LastName, Gender, Salary, Count(Gender)
From SQLTutorial.dbo.EmployeeDemographics dem
Join SQLTutorial.dbo.EmployeeSalary sal
	On dem.EmployeeID = sal.EmployeeID
Group By FirstName, LastName, Gender, Salary

--Group By can only do one calculation
Select Gender, Count(Gender)
From SQLTutorial.dbo.EmployeeDemographics dem
Join SQLTutorial.dbo.EmployeeSalary sal
	On dem.EmployeeID = sal.EmployeeID
Group By Gender
