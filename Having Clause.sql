/*
Having Clause
*/

--Count must with Group By
Select JobTitle, Count(JobTitle)
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group By JobTitle

--Error 1: Where cannot fit with Count
Select JobTitle, Count(JobTitle)
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where Count(JobTitle) > 1
Group By JobTitle

--Error 2: Having must below Group By
Select JobTitle, Count(JobTitle)
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Having Count(JobTitle) > 1
Group By JobTitle

--Correct: Having Fit With Count & Group By
Select JobTitle, Count(JobTitle)
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group By JobTitle
Having Count(JobTitle) > 1

--Having Must Above Order By
Select JobTitle, AVG(Salary)
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Group By JobTitle
Having AVG(Salary) > 45000
Order By AVG(Salary)