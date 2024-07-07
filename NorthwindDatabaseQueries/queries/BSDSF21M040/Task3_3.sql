select CONCAT(FirstName,' ',LastName) as Name from Employees 
where datediff(year, BirthDate, HireDate) < 21;