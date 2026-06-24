# Práctica 2 - Data Warehouse con Northwind

Este repositorio contiene la práctica de creación de un Data Warehouse utilizando la base de datos Northwind como origen de datos.

## Descripción

La práctica consiste en construir un Data Warehouse llamado `DW_Northwind`, tomando como base la información de pedidos de la base de datos `Northwind`.

El modelo utilizado es de tipo estrella. La tabla de hechos es `Orders` y las dimensiones son:

- Products
- Customers
- Employees
- Suppliers
- Time

El proceso ETL fue desarrollado mediante SQL Server Integration Services en Visual Studio.

## Herramientas utilizadas

- SQL Server
- SQL Server Management Studio
- Visual Studio
- SQL Server Integration Services
- Northwind
- SQL

## Estructura del repositorio

```text
P2_DW_Northwind_SSIS/
│
├── documentacion/
│   ├── Practica2_DW_Northwind.docx
│   └── Practica2_DW_Northwind.pdf
│
├── scripts/
│   ├── 01_crear_dw_northwind.sql
│   ├── 02_limpiar_dw.sql
│   ├── 03_consultas_ole_db_source_ssis.sql
│   └── 04_validacion_resultados.sql
│
├── capturas/
│   └── README.md
│
└── ssis/
    └── ETL_Northwind/
