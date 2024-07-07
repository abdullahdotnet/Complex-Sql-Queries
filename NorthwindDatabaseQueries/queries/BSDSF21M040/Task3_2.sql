select count(*) as 'Employee Count in Bavaria' from EmployeeTerritories as et
join Employees as e on e.EmployeeID = et.EmployeeID
join Territories as t on t.TerritoryID = et.TerritoryID
where t.TerritoryDescription = 'California'