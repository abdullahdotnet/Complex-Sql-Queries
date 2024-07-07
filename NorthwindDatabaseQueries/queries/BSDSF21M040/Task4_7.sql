/* This query is very complex and appeal the need of datawarehouse but still it was feasable
to write this query with date filtering and aggregation*/


WITH ShippedProducts AS (
    SELECT
        YEAR(o.ShippedDate) AS Year,
        SUM(od.UnitPrice * od.Quantity * (1 - od.Discount)) AS TotalAmount
    FROM Products p
    JOIN OrderDetails od ON p.ProductID = od.ProductID
    JOIN Orders o ON od.OrderID = o.OrderID
    JOIN Shippers s ON o.ShipVia = s.ShipperID
    JOIN Customers c ON o.CustomerID = c.CustomerID
    JOIN EmployeeTerritories et ON o.EmployeeID = et.EmployeeID
    JOIN Territories t ON et.TerritoryID = t.TerritoryID
    JOIN Regions r ON t.RegionID = r.RegionID
    WHERE r.RegionDescription = 'Asia'
      AND MONTH(o.ShippedDate) IN (1, 2, 3)
      AND YEAR(o.ShippedDate) IN (2023, 2024)
    GROUP BY YEAR(o.ShippedDate)
)
SELECT
    Year,
    TotalAmount
FROM ShippedProducts
ORDER BY Year;
