select count(*) as 'No of Orders' from Orders as  o
join OrderDetails as od
on o.OrderID = od.OrderID
join Products as p
on od.ProductID = p.ProductID
join Suppliers as s 
on p.SupplierID = s.SupplierID
where s.City = 'Munich' and o.ShipCity = 'Berlin';