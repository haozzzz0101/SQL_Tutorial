/*
Temp Tables
*/

Create Table #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int
)

Select *
From #temp_Employee

--we can use .. in place of .dbo.
Insert into #temp_Employee
Select *
From SQLTutorial..EmployeeSalary

--Create more advanced table
--We can delete exist named table to run the codes many times
Drop Table If Exists #Temp_Employee2
Create Table #temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int
)

Insert into #temp_Employee2
Select JobTitle, Count(JobTitle), AVG(Age), AVG(Salary)
From SQLTutorial..EmployeeDemographics emp
Join SQLTutorial..EmployeeSalary sal
	On emp.EmployeeID = sal.EmployeeID
Group By JobTitle

Select *
From #temp_Employee2