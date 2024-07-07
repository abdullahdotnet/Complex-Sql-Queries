-- Create the database
-- CREATE DATABASE Northwind;
-- GO

-- Use the created database
USE Northwind;
GO

-- Create the Regions table
CREATE TABLE Regions (
    RegionID INT PRIMARY KEY,
    RegionDescription NVARCHAR(50)
);

-- Create the Territories table
CREATE TABLE Territories (
    TerritoryID NVARCHAR(20) PRIMARY KEY,
    TerritoryDescription NVARCHAR(50),
    RegionID INT,
    FOREIGN KEY (RegionID) REFERENCES Regions(RegionID)
);

-- Create the Shippers table
CREATE TABLE Shippers (
    ShipperID INT PRIMARY KEY,
    CompanyName NVARCHAR(50),
    Phone NVARCHAR(24)
);

-- Create the Customers table
CREATE TABLE Customers (
    CustomerID NVARCHAR(5) PRIMARY KEY,
    CompanyName NVARCHAR(40),
    ContactName NVARCHAR(30),
    ContactTitle NVARCHAR(30),
    Address NVARCHAR(60),
    City NVARCHAR(15),
    Region NVARCHAR(15) NULL,
    PostalCode NVARCHAR(10) NULL,
    Country NVARCHAR(15),
    Phone NVARCHAR(24),
    Fax NVARCHAR(24) NULL
);

-- Create the Suppliers table
CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName NVARCHAR(40),
    ContactName NVARCHAR(30),
    ContactTitle NVARCHAR(30),
    Address NVARCHAR(60),
    City NVARCHAR(15),
    Region NVARCHAR(15) NULL,
    PostalCode NVARCHAR(10),
    Country NVARCHAR(15),
    Phone NVARCHAR(24),
    Fax NVARCHAR(24) NULL,
    Homepage NTEXT NULL
);

-- Create the Categories table
CREATE TABLE Categories (
    CategoryID INT PRIMARY KEY,
    CategoryName NVARCHAR(15),
    Description NTEXT,
    Picture IMAGE
);

-- Create the Products table
CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(40),
    SupplierID INT,
    CategoryID INT,
    QuantityPerUnit NVARCHAR(20),
    UnitPrice MONEY,
    UnitsInStock SMALLINT,
    UnitsOnOrder SMALLINT,
    ReorderLevel SMALLINT,
    Discontinued BIT,
    FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),
    FOREIGN KEY (CategoryID) REFERENCES Categories(CategoryID)
);

-- Create the Employees table
CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    LastName NVARCHAR(20),
    FirstName NVARCHAR(10),
    Title NVARCHAR(30),
    TitleOfCourtesy NVARCHAR(25),
    BirthDate DATETIME,
    HireDate DATETIME,
    Address NVARCHAR(60),
    City NVARCHAR(15),
    Region NVARCHAR(15) NULL,
    PostalCode NVARCHAR(10),
    Country NVARCHAR(15),
    HomePhone NVARCHAR(24),
    Extension NVARCHAR(4),
    Photo IMAGE,
    Notes NTEXT,
    ReportsTo INT NULL,
    PhotoPath NVARCHAR(255),
    FOREIGN KEY (ReportsTo) REFERENCES Employees(EmployeeID)
);

-- Create the Orders table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID NVARCHAR(5),
    EmployeeID INT,
    OrderDate DATETIME,
    RequiredDate DATETIME,
    ShippedDate DATETIME NULL,
    ShipVia INT,
    Freight MONEY,
    ShipName NVARCHAR(40),
    ShipAddress NVARCHAR(60),
    ShipCity NVARCHAR(15),
    ShipRegion NVARCHAR(15) NULL,
    ShipPostalCode NVARCHAR(10) NULL,
    ShipCountry NVARCHAR(15),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (ShipVia) REFERENCES Shippers(ShipperID)
);

-- Create the OrderDetails table
CREATE TABLE OrderDetails (
    OrderID INT,
    ProductID INT,
    UnitPrice MONEY,
    Quantity SMALLINT,
    Discount REAL,
    PRIMARY KEY (OrderID, ProductID),
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);

-- Create the EmployeeTerritories table
CREATE TABLE EmployeeTerritories (
    EmployeeID INT,
    TerritoryID NVARCHAR(20),
    PRIMARY KEY (EmployeeID, TerritoryID),
    FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
    FOREIGN KEY (TerritoryID) REFERENCES Territories(TerritoryID)
);
