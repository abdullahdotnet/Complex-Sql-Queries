-- Count of products shipped to Cap Town
SELECT 'Cape Town' AS City, COUNT(od.ProductID) AS ProductCount
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Shippers s ON o.ShipVia = s.ShipperID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE p.SupplierID = 2
  AND s.ShipperID = 3
  AND c.City = 'Cape Town'

UNION ALL

-- Count of products shipped to Berlin
SELECT 'Berlin' AS City, COUNT(od.ProductID) AS ProductCount
FROM Products p
JOIN OrderDetails od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
JOIN Shippers s ON o.ShipVia = s.ShipperID
JOIN Customers c ON o.CustomerID = c.CustomerID
WHERE p.SupplierID = 2
  AND s.ShipperID = 3
  AND c.City = 'Berlin';
