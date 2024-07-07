INSERT INTO Regions (RegionID, RegionDescription)
VALUES
(1, 'North America'),
(2, 'Europe'),
(3, 'Asia'),
(4, 'South America'),
(5, 'Africa');

INSERT INTO Territories (TerritoryID, TerritoryDescription, RegionID)
VALUES
(1, 'California', 1),
(2, 'Bavaria', 2),
(3, 'Guangdong', 3),
(4, 'São Paulo', 4),
(5, 'Gauteng', 5);

INSERT INTO Shippers (ShipperID, CompanyName, Phone)
VALUES
(1, 'FedEx', '800-463-3339'),
(2, 'UPS', '800-742-5877'),
(3, 'DHL', '800-225-5345'),
(4, 'USPS', '800-275-8777'),
(5, 'TNT', '800-558-5555');

INSERT INTO Suppliers (SupplierID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax, Homepage)
VALUES
(1, 'Tech Supplies Inc.', 'Alice Johnson', 'Purchasing Manager', '123 Tech Ave', 'San Francisco', 'CA', '94103', 'USA', '415-555-1234', '415-555-1235', 'http://techsupplies.com'),
(2, 'Euro Parts Ltd.', 'Bob Smith', 'Sales Director', '456 Industrial St', 'Munich', 'Bavaria', '80331', 'Germany', '49-89-555-1234', '49-89-555-1235', 'http://europarts.com'),
(3, 'Asian Goods Co.', 'Charlie Lee', 'CEO', '789 Commerce Rd', 'Guangzhou', 'Guangdong', '510000', 'China', '86-20-555-1234', '86-20-555-1235', 'http://asiangoods.com'),
(4, 'South American Products', 'David Martinez', 'CFO', '101 Market Pl', 'São Paulo', 'SP', '01000-000', 'Brazil', '55-11-555-1234', '55-11-555-1235', 'http://saoproducts.com'),
(5, 'African Imports', 'Eve Ndlovu', 'CTO', '202 Trade St', 'Johannesburg', 'Gauteng', '2000', 'South Africa', '27-11-555-1234', '27-11-555-1235', 'http://africanimports.com');

INSERT INTO Categories (CategoryID, CategoryName, Description, Picture)
VALUES
(1, 'Electronics', 'Gadgets and devices', NULL),
(2, 'Furniture', 'Home and office furniture', NULL),
(3, 'Clothing', 'Apparel and accessories', NULL),
(4, 'Food', 'Groceries and snacks', NULL),
(5, 'Books', 'Printed and digital books', NULL);

INSERT INTO Products (ProductID, ProductName, QuantityPerUnit, UnitPrice, UnitsInStock, UnitsOnOrder, ReorderLevel, Discontinued, SupplierID, CategoryID)
VALUES
(1, 'iPhone 13', '1 unit', 799.99, 150, 50, 20, 0, 1, 1),
(2, 'Ergonomic Chair', '1 unit', 199.99, 200, 30, 15, 0, 2, 2),
(3, 'Cotton T-shirt', '1 unit', 9.99, 300, 40, 10, 0, 3, 3),
(4, 'Organic Chocolate', '20 bars', 39.99, 500, 60, 25, 0, 4, 4),
(5, 'E-book Reader', '1 unit', 129.99, 120, 20, 10, 0, 5, 5);

INSERT INTO Customers (CustomerID, CompanyName, ContactName, ContactTitle, Address, City, Region, PostalCode, Country, Phone, Fax)
VALUES
(1, 'Tech World', 'John Doe', 'IT Manager', '321 Silicon St', 'San Jose', 'CA', '95123', 'USA', '408-555-5678', '408-555-5679'),
(2, 'Euro Shop', 'Jane Schmidt', 'Store Manager', '654 Market Strasse', 'Berlin', 'Berlin', '10117', 'Germany', '49-30-555-5678', '49-30-555-5679'),
(3, 'Asia Market', 'Wei Zhang', 'Owner', '987 Trade Blvd', 'Shenzhen', 'Guangdong', '518000', 'China', '86-755-555-5678', '86-755-555-5679'),
(4, 'South Foods', 'Carlos Silva', 'General Manager', '432 Food Ave', 'Rio de Janeiro', 'RJ', '20000-000', 'Brazil', '55-21-555-5678', '55-21-555-5679'),
(5, 'African Books', 'Linda Nkosi', 'Bookstore Manager', '543 Book St', 'Cape Town', 'Western Cape', '8000', 'South Africa', '27-21-555-5678', '27-21-555-5679');

INSERT INTO Employees (EmployeeID, FirstName, LastName, Title, TitleOfCourtesy, BirthDate, HireDate, Address, City, Region, PostalCode, Country, HomePhone, Extension, Photo, Notes, ReportsTo, PhotoPath)
VALUES
(1, 'Michael', 'Johnson', 'Sales Associate', 'Mr.', '1981-02-01', '2001-02-01', '321 Elm St', 'San Francisco', 'CA', '94103', 'USA', '415-555-1234', '2001', NULL, 'Hard worker', NULL, NULL),
(2, 'Sarah', 'Williams', 'Sales Manager', 'Ms.', '1986-03-01', '2006-03-01', '654 Oak St', 'Munich', 'Bavaria', '80331', 'Germany', '49-89-555-1234', '2002', NULL, 'Excellent leader', 1, NULL),
(3, 'James', 'Taylor', 'Sales Associate', 'Mr.', '1991-04-01', '2011-04-01', '987 Pine St', 'Guangzhou', 'Guangdong', '510000', 'China', '86-20-555-1234', '2003', NULL, 'Great team player', 2, NULL),
(4, 'Linda', 'Walker', 'Sales Associate', 'Ms.', '1996-05-01', '2016-05-01', '210 Maple St', 'São Paulo', 'SP', '01000-000', 'Brazil', '55-11-555-1234', '2004', NULL, 'Customer-oriented', 3, NULL),
(5, 'Robert', 'White', 'Sales Associate', 'Mr.', '2001-06-01', '2021-06-01', '543 Birch St', 'Johannesburg', 'Gauteng', '2000', 'South Africa', '27-11-555-1234', '2005', NULL, 'Detail-oriented', 4, NULL);

INSERT INTO Orders (OrderID, CustomerID, EmployeeID, OrderDate, RequiredDate, ShippedDate, ShipVia, Freight, ShipName, ShipAddress, ShipCity, ShipRegion, ShipPostalCode, ShipCountry)
VALUES
(1, 1, 1, '2023-01-15', '2023-01-20', '2023-01-18', 1, 50.00, 'Tech World Shipment', '321 Silicon St', 'San Jose', 'CA', '95123', 'USA'),
(2, 2, 2, '2023-02-10', '2023-02-15', '2023-02-13', 2, 75.00, 'Euro Shop Shipment', '654 Market Strasse', 'Berlin', 'Berlin', '10117', 'Germany'),
(3, 3, 3, '2023-03-05', '2023-03-10', '2023-03-08', 3, 60.00, 'Asia Market Shipment', '987 Trade Blvd', 'Shenzhen', 'Guangdong', '518000', 'China'),
(4, 4, 4, '2023-04-12', '2023-04-17', '2023-04-15', 4, 45.00, 'South Foods Shipment', '432 Food Ave', 'Rio de Janeiro', 'RJ', '20000-000', 'Brazil'),
(5, 5, 5, '2023-05-20', '2023-05-25', '2023-05-23', 5, 55.00, 'African Books Shipment', '543 Book St', 'Cape Town', 'Western Cape', '8000', 'South Africa');

INSERT INTO OrderDetails (OrderID, ProductID, UnitPrice, Quantity, Discount)
VALUES
(1, 1, 799.99, 2, 0.05),
(2, 2, 199.99, 3, 0.10),
(3, 3, 9.99, 10, 0.00),
(4, 4, 39.99, 5, 0.15),
(5, 5, 129.99, 4, 0.20);

INSERT INTO EmployeeTerritories (EmployeeID, TerritoryID)
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
