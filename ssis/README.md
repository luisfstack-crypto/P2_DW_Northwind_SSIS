# Proyecto SSIS

En esta carpeta se debe colocar el proyecto de SQL Server Integration Services utilizado para realizar el proceso ETL.

## Proyecto

Nombre del proyecto:

```text
ETL_Northwind

Paquete principal
Package.dtsx
Descripción

El paquete SSIS contiene:

Una tarea Ejecutar SQL para limpiar las tablas del Data Warehouse.
Data Flow Task para cargar Products.
Data Flow Task para cargar Customers.
Data Flow Task para cargar Employees.
Data Flow Task para cargar Suppliers.
Data Flow Task para cargar Time.
Data Flow Task para cargar Orders.
Conexiones utilizadas
CN_Northwind: conexión hacia la base de datos origen Northwind.
CN_DW_Northwind: conexión hacia la base de datos destino DW_Northwind.