-- Script de nettoyage pour la table SalesOrderHeader

SELECT 
    SalesOrderID,        -- Sélectionne l'identifiant unique de la commande
    OrderDate,           -- Sélectionne la date à laquelle la commande a été passée
    DueDate,             -- Sélectionne la date prévue pour le traitement de la commande
    ShipDate,            -- Sélectionne la date réelle d'expédition de la commande
    CustomerID,          -- Sélectionne l'identifiant du client ayant passé la commande
    SalesPersonID,       -- Sélectionne l'identifiant du vendeur qui a réalisé la vente
    TerritoryID,         -- Sélectionne l'identifiant du territoire de vente lié à la commande
    Freight,             -- Sélectionne les frais d'expédition pour la commande
    TotalDue,            -- Sélectionne le montant total dû par le client pour cette commande
    YEAR(OrderDate) AS OrderYear,  -- Extraction de l'année à partir de la date de commande
    MONTH(OrderDate) AS OrderMonth  -- Extraction du mois à partir de la date de commande
    
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]  -- Spécifie la table à partir de laquelle les données sont extraites
