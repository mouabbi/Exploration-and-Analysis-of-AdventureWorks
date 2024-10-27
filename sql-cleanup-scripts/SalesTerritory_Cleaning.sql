-- Script de nettoyage pour la table SalesTerritory

SELECT 
    TerritoryID,            -- Identifiant unique du territoire, utilis� comme cl� primaire et permettant de lier cette table � SalesOrderHeader
    Name,                   -- Nom du territoire, utile pour l�analyse par r�gion
    CountryRegionCode,      -- Code du pays ou de la r�gion, facilitant l'analyse g�ographique
    [Group],                -- Cat�gorie g�ographique du territoire (ex. Am�rique du Nord, Europe)
    SalesYTD,              -- Chiffre d'affaires cumul� de l�ann�e jusqu�� la date d�analyse, permettant de comparer les performances r�gionales
    SalesLastYear,         -- Chiffre d'affaires de l�ann�e pr�c�dente, utile pour l'analyse des tendances
    CostYTD,               -- Co�ts cumul�s pour l�ann�e en cours dans le territoire, utilis� pour �valuer la rentabilit�
    CostLastYear           -- Co�ts de l�ann�e pr�c�dente, pour analyser les variations des co�ts
FROM 
    [AdventureWorks2019].[Sales].[SalesTerritory]  -- Sp�cifie la table � partir de laquelle les donn�es sont extraites

-- (Optionnel) Vous pouvez ajouter une clause WHERE ici pour filtrer les donn�es si n�cessaire
-- WHERE SalesYTD > 0  -- Exemple de filtre pour exclure les territoires sans chiffre d'affaire
