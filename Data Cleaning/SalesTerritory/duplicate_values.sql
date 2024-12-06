-- Script to detect duplicates in SalesTerritory table
SELECT 
    TerritoryID, 
    Name, 
    CountryRegionCode, 
    [Group], 
    SalesYTD, 
    SalesLastYear, 
    CostYTD, 
    CostLastYear, 
    rowguid, 
    ModifiedDate,
    COUNT(*) AS DuplicateCount
FROM 
    [AdventureWorks2019].[Sales].[SalesTerritory]
GROUP BY 
    TerritoryID, 
    Name, 
    CountryRegionCode, 
    [Group], 
    SalesYTD, 
    SalesLastYear, 
    CostYTD, 
    CostLastYear, 
    rowguid, 
    ModifiedDate
HAVING 
    COUNT(*) > 1;
