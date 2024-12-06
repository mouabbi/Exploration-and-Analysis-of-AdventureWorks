-- Joining `SpecialOfferProduct` with Product and Categories  

SELECT 
    sop.SpecialOfferID,
    sop.ProductID,                     -- Unique identifier for the product associated with a special offer
    p.Name AS ProductName,             -- Name of the product
    p.ProductNumber,                   -- Product reference number
    p.Color,                           -- Product color
    p.StandardCost,                    -- Standard cost of the product
    p.ListPrice,                       -- List price of the product
    p.SellStartDate,                   -- Product sale start date
    p.SellEndDate,                     -- Product sale end date (if applicable)
    ps.Name AS SubcategoryName,        -- Product subcategory name
    pc.Name AS CategoryName            -- Product category name
FROM 
    [AdventureWorks2019].[Sales].[SpecialOfferProduct] AS sop  -- Table linking products to special offers
LEFT JOIN 
    [AdventureWorks2019].[Production].[Product] AS p ON sop.ProductID = p.ProductID  -- Join to retrieve product details
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductSubcategory] AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID  -- Join to link subcategory
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductCategory] AS pc ON ps.ProductCategoryID = pc.ProductCategoryID;  -- Join to link category
