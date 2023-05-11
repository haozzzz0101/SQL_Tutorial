/*
Case Statement
*/

--First, Select F,L, & Age order by age 
Select FirstName, LastName, Age
From SQLTutorial.dbo.EmployeeDemographics
Where Age is NOT Null
Order By Age

--Second, do case statement
--Be aware there must be a comma after Age
Select FirstName, LastName, Age,
Case
	When Age >30 Then 'Old'
	When Age Between 27 and 30 Then 'Young'
	Else 'Baby'
End
From SQLTutorial.dbo.EmployeeDemographics
Where Age is NOT Null
Order By Age

--Example with Joined Tables
--Step 1
Select *
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID

--Step 2: Add Case Statement
Select FirstName, LastName, JobTitle, Salary,
Case
	When JobTitle = 'Salesman' Then Salary + (Salary*.10)
	When JobTitle = 'Accountant' Then Salary + (Salary*.05)
	When JobTitle = 'HR' Then Salary + (Salary*.01)
	Else Salary + (Salary*.03)
End
From SQLTutorial.dbo.EmployeeDemographics
Join SQLTutorial.dbo.EmployeeSalary
On EmployeeDemographics.EmployeeID = EmployeeSalary.EmployeeID