SELECT
    s.City AS SupplierCity,
    od.Discount,
    COUNT(*) AS DiscountCount
FROM Suppliers s
JOIN Products p ON s.SupplierID = p.SupplierID
JOIN OrderDetails od ON p.ProductID = od.ProductID
JOIN Orders o ON od.OrderID = o.OrderID
WHERE YEAR(o.OrderDate) = 2023
GROUP BY s.City, od.Discount
ORDER BY s.City, od.Discount;
