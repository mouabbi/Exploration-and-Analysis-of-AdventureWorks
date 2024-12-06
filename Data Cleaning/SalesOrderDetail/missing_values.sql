-- Identify missing values in each column of the SalesOrderDetail table
SELECT 
    'SalesOrderID' AS ColumnName, 
    COUNT(*) - COUNT(SalesOrderID) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'SalesOrderDetailID' AS ColumnName, 
    COUNT(*) - COUNT(SalesOrderDetailID) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'CarrierTrackingNumber' AS ColumnName, 
    COUNT(*) - COUNT(CarrierTrackingNumber) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'OrderQty' AS ColumnName, 
    COUNT(*) - COUNT(OrderQty) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'ProductID' AS ColumnName, 
    COUNT(*) - COUNT(ProductID) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'SpecialOfferID' AS ColumnName, 
    COUNT(*) - COUNT(SpecialOfferID) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'UnitPrice' AS ColumnName, 
    COUNT(*) - COUNT(UnitPrice) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'UnitPriceDiscount' AS ColumnName, 
    COUNT(*) - COUNT(UnitPriceDiscount) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'LineTotal' AS ColumnName, 
    COUNT(*) - COUNT(LineTotal) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'rowguid' AS ColumnName, 
    COUNT(*) - COUNT(rowguid) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail]
UNION ALL
SELECT 
    'ModifiedDate' AS ColumnName, 
    COUNT(*) - COUNT(ModifiedDate) AS NullCount 
FROM [AdventureWorks2019].[Sales].[SalesOrderDetail];
