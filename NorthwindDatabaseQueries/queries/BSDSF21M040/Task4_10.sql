/* This query is very complex and appeal the need of datawarehouse but still it was feasable
to write this query with multiple joins and group by but might benefit from performance 
optimization in a data warehouse for 
very large datasets.*/

WITH MonthlyPerformance AS (
    SELECT
        p.ProductName,
        s.CompanyName AS SupplierName,
        c.CategoryName,
        MONTH(o.ShippedDate) AS Month,
        YEAR(o.ShippedDate) AS Year,
        COUNT(od.ProductID) AS TotalProducts
    FROM Products p
    JOIN Suppliers s ON p.SupplierID = s.SupplierID
    JOIN Categories c ON p.CategoryID = c.CategoryID
    JOIN OrderDetails od ON p.ProductID = od.ProductID
    JOIN Orders o ON od.OrderID = o.OrderID
    WHERE c.CategoryName = 'Cosmetics'
      AND YEAR(o.ShippedDate) = 2024
    GROUP BY p.ProductName, s.CompanyName, c.CategoryName, MONTH(o.ShippedDate), YEAR(o.ShippedDate)
)
SELECT
    mp.ProductName,
    mp.SupplierName,
    mp.CategoryName,
    mp.Month,
    mp.Year,
    mp.TotalProducts
FROM MonthlyPerformance mp
WHERE (mp.Month = 1 AND mp.Year = 2023) OR
      (mp.Month <> 1 AND mp.Year = 2023)
ORDER BY mp.ProductName, mp.Month;
