-- Script to extract important columns from the SalesOrderHeader table

SELECT 
    SalesOrderID,        -- Unique identifier for the sales order
    OrderDate,           -- Date when the order was placed
    DueDate,             -- Scheduled processing date for the order
    ShipDate,            -- Actual shipment date of the order
    CustomerID,          -- Identifier for the customer placing the order
    SalesPersonID,       -- Identifier for the salesperson responsible for the order
    TerritoryID,         -- Identifier for the sales territory
    Freight,             -- Shipping costs associated with the order
    TotalDue,            -- Total amount due for the order
    YEAR(OrderDate) AS OrderYear,  -- Extracts the year from the order date
    MONTH(OrderDate) AS OrderMonth  -- Extracts the month from the order date
    
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader];
