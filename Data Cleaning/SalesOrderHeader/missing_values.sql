-- SQL script to count null values for each column in the SalesOrderHeader table.

-- Select the column name and calculate the number of null values for 'SalesOrderID'.
SELECT 
    'SalesOrderID' AS ColumnName, 
    COUNT(*) - COUNT([SalesOrderID]) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

-- Combine results from multiple queries into a single result set.
UNION
-- Count null values for the 'RevisionNumber' column.
SELECT 
    'RevisionNumber', 
    COUNT(*) - COUNT([RevisionNumber]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'OrderDate' column.
SELECT 
    'OrderDate', 
    COUNT(*) - COUNT([OrderDate]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'DueDate' column.
SELECT 
    'DueDate', 
    COUNT(*) - COUNT([DueDate]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'ShipDate' column.
SELECT 
    'ShipDate', 
    COUNT(*) - COUNT([ShipDate]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'Status' column.
SELECT 
    'Status', 
    COUNT(*) - COUNT([Status]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'OnlineOrderFlag' column.
SELECT 
    'OnlineOrderFlag', 
    COUNT(*) - COUNT([OnlineOrderFlag]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'SalesOrderNumber' column.
SELECT 
    'SalesOrderNumber', 
    COUNT(*) - COUNT([SalesOrderNumber]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'PurchaseOrderNumber' column.
SELECT 
    'PurchaseOrderNumber', 
    COUNT(*) - COUNT([PurchaseOrderNumber]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'AccountNumber' column.
SELECT 
    'AccountNumber', 
    COUNT(*) - COUNT([AccountNumber]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'CustomerID' column.
SELECT 
    'CustomerID', 
    COUNT(*) - COUNT([CustomerID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'SalesPersonID' column.
SELECT 
    'SalesPersonID', 
    COUNT(*) - COUNT([SalesPersonID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'TerritoryID' column.
SELECT 
    'TerritoryID', 
    COUNT(*) - COUNT([TerritoryID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'BillToAddressID' column.
SELECT 
    'BillToAddressID', 
    COUNT(*) - COUNT([BillToAddressID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'ShipToAddressID' column.
SELECT 
    'ShipToAddressID', 
    COUNT(*) - COUNT([ShipToAddressID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'ShipMethodID' column.
SELECT 
    'ShipMethodID', 
    COUNT(*) - COUNT([ShipMethodID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'CreditCardID' column.
SELECT 
    'CreditCardID', 
    COUNT(*) - COUNT([CreditCardID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'CreditCardApprovalCode' column.
SELECT 
    'CreditCardApprovalCode', 
    COUNT(*) - COUNT([CreditCardApprovalCode]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'CurrencyRateID' column.
SELECT 
    'CurrencyRateID', 
    COUNT(*) - COUNT([CurrencyRateID]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'SubTotal' column.
SELECT 
    'SubTotal', 
    COUNT(*) - COUNT([SubTotal]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'TaxAmt' column.
SELECT 
    'TaxAmt', 
    COUNT(*) - COUNT([TaxAmt]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'Freight' column.
SELECT 
    'Freight', 
    COUNT(*) - COUNT([Freight]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'TotalDue' column.
SELECT 
    'TotalDue', 
    COUNT(*) - COUNT([TotalDue]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'Comment' column.
SELECT 
    'Comment', 
    COUNT(*) - COUNT([Comment]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'rowguid' column.
SELECT 
    'rowguid', 
    COUNT(*) - COUNT([rowguid]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

UNION
-- Count null values for the 'ModifiedDate' column.
SELECT 
    'ModifiedDate', 
    COUNT(*) - COUNT([ModifiedDate]) 
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader];
