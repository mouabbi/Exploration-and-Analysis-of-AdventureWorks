-- Script de jointure basé sur SpecialOfferProduct pour extraire les informations de produits associés aux offres spéciales
SELECT 
    sop.SpecialOfferID,
    sop.ProductID,                     -- Identifiant unique du produit associé à une offre spéciale
    p.Name AS ProductName,             -- Nom du produit pour référence
    p.ProductNumber,                   -- Numéro de référence du produit
    p.Color,                           -- Couleur du produit
    p.StandardCost,                    -- Coût standard du produit
    p.ListPrice,                       -- Prix de liste du produit
    p.SellStartDate,                   -- Date de début de vente du produit
    p.SellEndDate,                     -- Date de fin de vente du produit, si applicable
    ps.Name AS SubcategoryName,        -- Nom de la sous-catégorie du produit
    pc.Name AS CategoryName           -- Nom de la catégorie principale du produit

FROM 
    [AdventureWorks2019].[Sales].[SpecialOfferProduct] AS sop  -- Table principale liant produits et offres spéciales
LEFT JOIN 
    [AdventureWorks2019].[Production].[Product] AS p ON sop.ProductID = p.ProductID  -- Jointure pour récupérer les informations du produit
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductSubcategory] AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID  -- Jointure pour lier la sous-catégorie au produit
LEFT JOIN 
    [AdventureWorks2019].[Production].[ProductCategory] AS pc ON ps.ProductCategoryID = pc.ProductCategoryID  -- Jointure pour lier la catégorie principale à la sous-catégorie
