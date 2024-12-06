-- Script de jointure entre les tables SalesPerson et Employee pour analyser les performances des vendeurs

SELECT 
    sp.BusinessEntityID,        -- Identifiant unique de l'employé dans le système
    sp.TerritoryID,             -- Identifiant du territoire de vente, utile pour les analyses régionales
    sp.SalesQuota,              -- Objectif de vente assigné à l'employé
    sp.Bonus,                   -- Bonus reçu par l'employé
    sp.CommissionPct,           -- Pourcentage de commission attribué à l'employé
    sp.SalesYTD,                -- Chiffre d'affaires cumulé de l'année en cours
    sp.SalesLastYear,           -- Chiffre d'affaires de l'année précédente pour comparaison
    e.JobTitle,                 -- Poste de l'employé, pour filtrer ou analyser par titre
    e.HireDate,                 -- Date d'embauche de l'employé, utile pour des analyses d'ancienneté
    e.Gender                    -- Genre de l'employé, pour des analyses démographiques potentielles
    
FROM 
    [AdventureWorks2019].[Sales].[SalesPerson] AS sp  -- Table contenant les performances de vente
JOIN 
    [AdventureWorks2019].[HumanResources].[Employee] AS e ON sp.BusinessEntityID = e.BusinessEntityID  -- Jointure sur l'ID d'employé
