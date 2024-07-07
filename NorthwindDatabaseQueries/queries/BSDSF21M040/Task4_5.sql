select Top 1 sum(od.Quantity) as 'Quantity',p.ProductName from OrderDetails as od
join Products as p on od.ProductID = p.ProductID
group by p.ProductName order by sum(od.Quantity) desc; 
