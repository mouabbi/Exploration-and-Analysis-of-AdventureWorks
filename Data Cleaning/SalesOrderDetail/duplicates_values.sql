-- SQL script to identify duplicate rows in the SalesOrderDetail table by grouping columns.

SELECT 
    -- List of columns from SalesOrderDetail that are being checked for duplicates.
    SalesOrderID,  -- The ID of the sales order.
    ProductID, -- The ID of the product in the order.
    SalesOrderDetailID, -- The unique ID of the sales order detail (line item).
    COUNT(*) AS DuplicateCount -- Counts the number of duplicate rows for the same set of values.

-- Specifying the table to query from.
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]

-- Grouping by SalesOrderID, ProductID, and SalesOrderDetailID to identify duplicates.
GROUP BY 
    SalesOrderID, 
    ProductID, 
    SalesOrderDetailID

-- Filtering the results to only show those with more than 1 occurrence of the same data.
HAVING 
    COUNT(*) > 1;  -- Only show groups where there are more than one row (duplicates).
