USE DW_Northwind;
GO

SELECT 'Products' AS Tabla, COUNT(*) AS Total FROM Products
UNION ALL
SELECT 'Customers', COUNT(*) FROM Customers
UNION ALL
SELECT 'Employees', COUNT(*) FROM Employees
UNION ALL
SELECT 'Suppliers', COUNT(*) FROM Suppliers
UNION ALL
SELECT 'Time', COUNT(*) FROM [Time]
UNION ALL
SELECT 'Orders', COUNT(*) FROM Orders;
GO



SELECT TOP 20
    p.ProductName AS Producto,
    p.Category AS Categoria,
    c.CompanyName AS Cliente,
    c.City AS CiudadCliente,
    c.Country AS PaisCliente,
    e.FirstName + ' ' + e.LastName AS Empleado,
    s.CompanyName AS Proveedor,
    s.Country AS PaisProveedor,
    t.[Date] AS FechaPedido,
    t.[Year] AS Anio,
    t.[Month] AS Mes,
    t.[Day] AS Dia,
    o.Price AS Precio,
    o.Amount AS Cantidad,
    o.Price * o.Amount AS Total
FROM Orders o
INNER JOIN Products p
    ON o.ProductID = p.ProductID
INNER JOIN Customers c
    ON o.CustomerID = c.CustomerID
INNER JOIN Employees e
    ON o.EmployeeID = e.EmployeeID
INNER JOIN Suppliers s
    ON o.SupplierID = s.SupplierID
INNER JOIN [Time] t
    ON o.TimeID = t.ID;
GO