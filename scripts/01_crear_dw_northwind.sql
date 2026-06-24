CREATE DATABASE DW_Northwind;
GO

USE DW_Northwind;
GO

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName NVARCHAR(40) NOT NULL,
    Category NVARCHAR(40) NOT NULL
);

CREATE TABLE Customers (
    CustomerID NCHAR(5) PRIMARY KEY,
    CompanyName NVARCHAR(40) NOT NULL,
    City NVARCHAR(15),
    Country NVARCHAR(15)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName NVARCHAR(10) NOT NULL,
    LastName NVARCHAR(20) NOT NULL,
    Reports INT NULL
);

CREATE TABLE Suppliers (
    SupplierID INT PRIMARY KEY,
    CompanyName NVARCHAR(40) NOT NULL,
    Country NVARCHAR(15)
);

CREATE TABLE [Time] (
    ID INT IDENTITY(1,1) PRIMARY KEY,
    [Date] DATE NOT NULL,
    [Year] INT NOT NULL,
    [Month] NVARCHAR(20) NOT NULL,
    [Day] INT NOT NULL
);

CREATE TABLE Orders (
    ProductID INT NOT NULL,
    CustomerID NCHAR(5) NOT NULL,
    EmployeeID INT NOT NULL,
    SupplierID INT NOT NULL,
    TimeID INT NOT NULL,
    Price FLOAT NOT NULL,
    Amount INT NOT NULL,

    CONSTRAINT FK_Orders_Products
        FOREIGN KEY (ProductID) REFERENCES Products(ProductID),

    CONSTRAINT FK_Orders_Customers
        FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID),

    CONSTRAINT FK_Orders_Employees
        FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),

    CONSTRAINT FK_Orders_Suppliers
        FOREIGN KEY (SupplierID) REFERENCES Suppliers(SupplierID),

    CONSTRAINT FK_Orders_Time
        FOREIGN KEY (TimeID) REFERENCES [Time](ID)
);
GO