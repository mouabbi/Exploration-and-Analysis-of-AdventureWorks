SELECT 
    SalesOrderID, 
    ProductID, 
    SalesOrderDetailID, 
    COUNT(*) AS DuplicateCount
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]
GROUP BY 
    SalesOrderID, 
    ProductID, 
    SalesOrderDetailID
HAVING 
    COUNT(*) > 1;
