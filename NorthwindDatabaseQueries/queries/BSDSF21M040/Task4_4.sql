select count(*) as 'No of Orders', MONTH(OrderDate) as Month from Orders
where ShipCity = 'San Jose'
group by Month(OrderDate)