DECLARE @lastMonthDiscount DECIMAL(18, 2);
DECLARE @lastYearJuneDiscount DECIMAL(18, 2);

SELECT @lastMonthDiscount = SUM((od.UnitPrice * od.Quantity) * od.Discount)
FROM OrderDetails AS od
JOIN Orders AS o ON o.OrderID = od.OrderID
WHERE DATEPART(YEAR, o.OrderDate) = YEAR(GETDATE())
  AND DATEPART(MONTH, o.OrderDate) = MONTH(GETDATE()) - 1;


SELECT @lastYearJuneDiscount = SUM((od.UnitPrice * od.Quantity) * od.Discount)
FROM OrderDetails AS od
JOIN Orders AS o ON o.OrderID = od.OrderID
WHERE DATEPART(YEAR, o.OrderDate) = YEAR(GETDATE()) - 1
  AND DATEPART(MONTH, o.OrderDate) = 6;


SELECT 
    @lastMonthDiscount AS LastMonthDiscount,
    @lastYearJuneDiscount AS LastYearJuneDiscount
