select p.CategoryID, count(*) as 'Count of Products', sum(p.UnitPrice) as 'Total Price od Products'
from Products as p
group by p.CategoryID
