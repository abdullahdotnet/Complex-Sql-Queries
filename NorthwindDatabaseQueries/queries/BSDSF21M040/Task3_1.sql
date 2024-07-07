SELECT e.FirstName, e.LastName
FROM Employees e
JOIN EmployeeTerritories et ON e.EmployeeID = et.EmployeeID
JOIN Territories t ON et.TerritoryID = t.TerritoryID
JOIN Regions r ON t.RegionID = r.RegionID
WHERE r.RegionDescription = 'North America';
