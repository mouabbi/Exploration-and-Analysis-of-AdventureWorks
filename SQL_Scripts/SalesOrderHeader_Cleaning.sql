-- Script de nettoyage pour la table SalesOrderHeader

SELECT 
    SalesOrderID,        -- S�lectionne l'identifiant unique de la commande
    OrderDate,           -- S�lectionne la date � laquelle la commande a �t� pass�e
    DueDate,             -- S�lectionne la date pr�vue pour le traitement de la commande
    ShipDate,            -- S�lectionne la date r�elle d'exp�dition de la commande
    CustomerID,          -- S�lectionne l'identifiant du client ayant pass� la commande
    SalesPersonID,       -- S�lectionne l'identifiant du vendeur qui a r�alis� la vente
    TerritoryID,         -- S�lectionne l'identifiant du territoire de vente li� � la commande
    Freight,             -- S�lectionne les frais d'exp�dition pour la commande
    TotalDue,            -- S�lectionne le montant total d� par le client pour cette commande
    YEAR(OrderDate) AS OrderYear,  -- Extraction de l'ann�e � partir de la date de commande
    MONTH(OrderDate) AS OrderMonth  -- Extraction du mois � partir de la date de commande
    
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderHeader]  -- Sp�cifie la table � partir de laquelle les donn�es sont extraites
