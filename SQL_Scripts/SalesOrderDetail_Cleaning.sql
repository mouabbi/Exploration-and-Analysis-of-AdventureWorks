-- Script de nettoyage pour la table SalesOrderDetail
SELECT 
    SalesOrderID,           -- Clé étrangère, reliant cette table à SalesOrderHeader
    SalesOrderDetailID,     -- Identifiant unique de chaque ligne de commande, représentant chaque article distinct dans la commande
    OrderQty,               -- Quantité commandée pour chaque produit
    ProductID,              -- Identifiant du produit commandé, permettant de relier cette table aux informations produits
    UnitPrice,              -- Prix unitaire de chaque produit dans la commande, permettant de calculer le chiffre d'affaires
    UnitPriceDiscount,      -- Montant de remise par unité, indiquant les réductions appliquées
    LineTotal               -- Montant total de la ligne, incluant les réductions (calculé comme OrderQty * (UnitPrice - UnitPriceDiscount))
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]  -- Spécifie la table à partir de laquelle les données sont extraites

