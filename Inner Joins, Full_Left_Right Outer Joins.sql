/*
Inner Joins, Full/Left/Right Outer Joins
*/

Select *
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From SQLTutorial.dbo.EmployeeDemographics
Full Outer Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From SQLTutorial.dbo.EmployeeDemographics
Left Outer Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

Select *
From SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--When select the Joined attribute (EmployeeID), we must choose a table. 
--But if not, no necessary to prefix any tables!
Select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--And it will be huge different in the choice of tables, especially in the left/right outer join!
Select EmployeeDemographics.EmployeeID, FirstName, LastName, JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Right Outer Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Get the Decrease Order of Salary Expect for 'Michael'
Select EmployeeDemographics.EmployeeID, FirstName, LastName, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where FirstName <> 'Michael'
Order By Salary DESC

--Get the Average Salary for Salesman
--Step 1: Select all Salesman & their Salary in Inner Joined Table First
Select JobTitle, Salary
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'

--Step 2: Use Average Function. 
--Be note! Must add Gourp By Function, otherwise AVG won't work! 
Select JobTitle, AVG(Salary)
From SQLTutorial.dbo.EmployeeDemographics
Inner Join SQLTutorial.dbo.EmployeeSalary
	On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID
Where JobTitle = 'Salesman'
Group By JobTitle