/* Consulta para DFT Products */

SELECT 
    p.ProductID,
    p.ProductName,
    c.CategoryName AS Category
FROM Products p
INNER JOIN Categories c
    ON p.CategoryID = c.CategoryID;



/* Consulta para DFT Customers */

SELECT
    CustomerID,
    CompanyName,
    City,
    Country
FROM Customers;



/* Consulta para DFT Employees */

SELECT
    EmployeeID,
    FirstName,
    LastName,
    ReportsTo AS Reports
FROM Employees;



/* Consulta para DFT Suppliers */

SELECT
    SupplierID,
    CompanyName,
    Country
FROM Suppliers;



/* Consulta para DFT Time */

SELECT DISTINCT
    CAST(o.OrderDate AS DATE) AS [Date],
    YEAR(o.OrderDate) AS [Year],
    DATENAME(MONTH, o.OrderDate) AS [Month],
    DAY(o.OrderDate) AS [Day]
FROM Northwind.dbo.Orders o
WHERE o.OrderDate IS NOT NULL;



/* Consulta para DFT Orders */

SELECT
    od.ProductID,
    o.CustomerID,
    o.EmployeeID,
    p.SupplierID,
    t.ID AS TimeID,
    od.UnitPrice AS Price,
    od.Quantity AS Amount
FROM Northwind.dbo.[Order Details] od
INNER JOIN Northwind.dbo.Orders o
    ON od.OrderID = o.OrderID
INNER JOIN Northwind.dbo.Products p
    ON od.ProductID = p.ProductID
INNER JOIN DW_Northwind.dbo.[Time] t
    ON CAST(o.OrderDate AS DATE) = t.[Date]
WHERE 
    o.CustomerID IS NOT NULL
    AND o.EmployeeID IS NOT NULL
    AND p.SupplierID IS NOT NULL;