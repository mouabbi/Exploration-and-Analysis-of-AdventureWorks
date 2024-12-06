SELECT 
    'SalesOrderID' AS ColumnName, COUNT(*) - COUNT([SalesOrderID]) AS NullCount FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'RevisionNumber', COUNT(*) - COUNT([RevisionNumber]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'OrderDate', COUNT(*) - COUNT([OrderDate]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'DueDate', COUNT(*) - COUNT([DueDate]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'ShipDate', COUNT(*) - COUNT([ShipDate]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'Status', COUNT(*) - COUNT([Status]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'OnlineOrderFlag', COUNT(*) - COUNT([OnlineOrderFlag]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'SalesOrderNumber', COUNT(*) - COUNT([SalesOrderNumber]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'PurchaseOrderNumber', COUNT(*) - COUNT([PurchaseOrderNumber]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'AccountNumber', COUNT(*) - COUNT([AccountNumber]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'CustomerID', COUNT(*) - COUNT([CustomerID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'SalesPersonID', COUNT(*) - COUNT([SalesPersonID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'TerritoryID', COUNT(*) - COUNT([TerritoryID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'BillToAddressID', COUNT(*) - COUNT([BillToAddressID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'ShipToAddressID', COUNT(*) - COUNT([ShipToAddressID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'ShipMethodID', COUNT(*) - COUNT([ShipMethodID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'CreditCardID', COUNT(*) - COUNT([CreditCardID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'CreditCardApprovalCode', COUNT(*) - COUNT([CreditCardApprovalCode]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'CurrencyRateID', COUNT(*) - COUNT([CurrencyRateID]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'SubTotal', COUNT(*) - COUNT([SubTotal]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'TaxAmt', COUNT(*) - COUNT([TaxAmt]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'Freight', COUNT(*) - COUNT([Freight]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'TotalDue', COUNT(*) - COUNT([TotalDue]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'Comment', COUNT(*) - COUNT([Comment]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'rowguid', COUNT(*) - COUNT([rowguid]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]
UNION
SELECT 
    'ModifiedDate', COUNT(*) - COUNT([ModifiedDate]) FROM [AdventureWorks2019].[Sales].[SalesOrderHeader];
