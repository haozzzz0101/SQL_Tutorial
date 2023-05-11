/*
Updating & Deleting Data
*/

Select *
From SQLTutorial.dbo.EmployeeDemographics

--Change Value
Update SQLTutorial.dbo.EmployeeDemographics
Set EmployeeID = 1012
Where FirstName = 'Holly' And LastName = 'Flax'

--Change Multiple Value
--Be Aware! When Set, use comma not And
Update SQLTutorial.dbo.EmployeeDemographics
Set Age = 32, Gender = 'Female'
Where FirstName = 'Holly' And LastName = 'Flax'

Delete From SQLTutorial.dbo.EmployeeDemographics
Where EmployeeID = 1005
