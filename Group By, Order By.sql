/*
Group By, Order By
*/

SELECT Gender, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender

SELECT Gender, Age, COUNT(Gender)
FROM EmployeeDemographics
GROUP BY Gender, Age

--Order By default ASC (Increase number)
SELECT *
FROM EmployeeDemographics
ORDER BY Age

--Decrease order both in Age & Gender
SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

--Increase order in Age, but decrease order in Gender
SELECT *
FROM EmployeeDemographics
ORDER BY Age, Gender DESC

--Same result as the above case, 
--But use Order By with Column Number (1,2,3,4 in this case beginning with 1 from the left)
SELECT *
FROM EmployeeDemographics
ORDER BY 4, 5 DESC

--Select & Count Gender with Age > 31
SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender

SELECT Gender, COUNT(Gender) AS CountGender
FROM EmployeeDemographics
WHERE Age > 31
GROUP BY Gender
ORDER BY CountGender DESC