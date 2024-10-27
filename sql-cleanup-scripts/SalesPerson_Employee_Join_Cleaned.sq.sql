-- Script de jointure entre les tables SalesPerson et Employee pour analyser les performances des vendeurs

SELECT 
    sp.BusinessEntityID,        -- Identifiant unique de l'employ� dans le syst�me
    sp.TerritoryID,             -- Identifiant du territoire de vente, utile pour les analyses r�gionales
    sp.SalesQuota,              -- Objectif de vente assign� � l'employ�
    sp.Bonus,                   -- Bonus re�u par l'employ�
    sp.CommissionPct,           -- Pourcentage de commission attribu� � l'employ�
    sp.SalesYTD,                -- Chiffre d'affaires cumul� de l'ann�e en cours
    sp.SalesLastYear,           -- Chiffre d'affaires de l'ann�e pr�c�dente pour comparaison
    e.JobTitle,                 -- Poste de l'employ�, pour filtrer ou analyser par titre
    e.HireDate,                 -- Date d'embauche de l'employ�, utile pour des analyses d'anciennet�
    e.Gender                    -- Genre de l'employ�, pour des analyses d�mographiques potentielles
    
FROM 
    [AdventureWorks2019].[Sales].[SalesPerson] AS sp  -- Table contenant les performances de vente
JOIN 
    [AdventureWorks2019].[HumanResources].[Employee] AS e ON sp.BusinessEntityID = e.BusinessEntityID  -- Jointure sur l'ID d'employ�
