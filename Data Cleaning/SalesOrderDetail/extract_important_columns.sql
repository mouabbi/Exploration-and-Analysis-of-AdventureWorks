SELECT 
    SalesOrderID,           -- Foreign key linking to the SalesOrderHeader table
    SalesOrderDetailID,     -- Unique identifier for each line item in the sales order
    OrderQty,               -- Quantity of the product ordered
    ProductID,              -- Product identifier
    UnitPrice,              -- Price per unit of the product
    UnitPriceDiscount,      -- Discount applied per unit
    LineTotal               -- Total amount for the line
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail];  -- Table containing the sales order details