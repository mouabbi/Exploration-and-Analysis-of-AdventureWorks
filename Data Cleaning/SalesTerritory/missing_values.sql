-- Script to find missing values in SalesTerritory table
SELECT 
    'TerritoryID' AS ColumnName, 
    COUNT(*) - COUNT(TerritoryID) AS NullCount
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'Name', 
    COUNT(*) - COUNT(Name)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'CountryRegionCode', 
    COUNT(*) - COUNT(CountryRegionCode)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'Group', 
    COUNT(*) - COUNT([Group])
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'SalesYTD', 
    COUNT(*) - COUNT(SalesYTD)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'SalesLastYear', 
    COUNT(*) - COUNT(SalesLastYear)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'CostYTD', 
    COUNT(*) - COUNT(CostYTD)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'CostLastYear', 
    COUNT(*) - COUNT(CostLastYear)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'rowguid', 
    COUNT(*) - COUNT(rowguid)
FROM [AdventureWorks2019].[Sales].[SalesTerritory]
UNION ALL
SELECT 
    'ModifiedDate', 
    COUNT(*) - COUNT(ModifiedDate)
FROM [AdventureWorks2019].[Sales].[SalesTerritory];
