-- Script de nettoyage pour la table SalesTerritory

SELECT 
    TerritoryID,            -- Identifiant unique du territoire, utilisé comme clé primaire et permettant de lier cette table à SalesOrderHeader
    Name,                   -- Nom du territoire, utile pour l’analyse par région
    CountryRegionCode,      -- Code du pays ou de la région, facilitant l'analyse géographique
    [Group],                -- Catégorie géographique du territoire (ex. Amérique du Nord, Europe)
    SalesYTD,              -- Chiffre d'affaires cumulé de l’année jusqu’à la date d’analyse, permettant de comparer les performances régionales
    SalesLastYear,         -- Chiffre d'affaires de l’année précédente, utile pour l'analyse des tendances
    CostYTD,               -- Coûts cumulés pour l’année en cours dans le territoire, utilisé pour évaluer la rentabilité
    CostLastYear           -- Coûts de l’année précédente, pour analyser les variations des coûts
FROM 
    [AdventureWorks2019].[Sales].[SalesTerritory]  -- Spécifie la table à partir de laquelle les données sont extraites

-- (Optionnel) Vous pouvez ajouter une clause WHERE ici pour filtrer les données si nécessaire
-- WHERE SalesYTD > 0  -- Exemple de filtre pour exclure les territoires sans chiffre d'affaire
