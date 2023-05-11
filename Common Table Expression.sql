/*
Common Table Expression
*/

--Rename our previous selection
With CTE_Employee as (
Select FirstName, LastName, Gender, Salary,
Count(Gender) Over (Partition By Gender) as TotalGender,
AVG(Salary) Over (Partition By Gender) as AvgSalary
From SQLTutorial.dbo.EmployeeDemographics dem
Join SQLTutorial.dbo.EmployeeSalary sal
	On dem.EmployeeID = sal.EmployeeID
Where Salary > '45000'
)

--We cannot query CTEs without With Function
Select *
From CTE_Employee

--we can use the renamed attributes with great simple
With CTE_Employee as (
Select FirstName, LastName, Gender, Salary,
Count(Gender) Over (Partition By Gender) as TotalGender,
AVG(Salary) Over (Partition By Gender) as AvgSalary
From SQLTutorial.dbo.EmployeeDemographics dem
Join SQLTutorial.dbo.EmployeeSalary sal
	On dem.EmployeeID = sal.EmployeeID
Where Salary > '45000'
)

Select FirstName, AvgSalary
From CTE_Employee