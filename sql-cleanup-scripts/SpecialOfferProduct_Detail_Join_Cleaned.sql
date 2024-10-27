-- Script de jointure bas� sur SpecialOfferProduct pour extraire les informations de produits associ�s aux offres sp�ciales
SELECT 
    sop.SpecialOfferID,
    sop.ProductID,                     -- Identifiant unique du produit associ� � une offre sp�ciale
    p.Name AS ProductName,             -- Nom du produit pour r�f�rence
    p.ProductNumber,                   -- Num�ro de r�f�rence du produit
    p.Color,                           -- Couleur du produit
    p.StandardCost,                    -- Co�t standard du produit
    p.ListPrice,                       -- Prix de liste du produit
    p.SellStartDate,                   -- Date de d�but de vente du produit
    p.SellEndDate,                     -- Date de fin de vente du produit, si applicable
    ps.Name AS SubcategoryName,        -- Nom de la sous-cat�gorie du produit
    pc.Name AS CategoryName           -- Nom de la cat�gorie principale du produit

FROM 
    [AdventureWorks2019].[Sales].[SpecialOfferProduct] AS sop  -- Table principale liant produits et offres sp�ciales
LEFT JOIN 
    [AdventureWorks2019].[Production].[Product] AS p ON sop.ProductID = p.ProductID  -- Jointure pour r�cup�rer les informations du produit
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductSubcategory] AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID  -- Jointure pour lier la sous-cat�gorie au produit
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductCategory] AS pc ON ps.ProductCategoryID = pc.ProductCategoryID  -- Jointure pour lier la cat�gorie principale � la sous-cat�gorie
