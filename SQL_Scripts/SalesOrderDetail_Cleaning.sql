-- Script de nettoyage pour la table SalesOrderDetail
SELECT 
    SalesOrderID,           -- Cl� �trang�re, reliant cette table � SalesOrderHeader
    SalesOrderDetailID,     -- Identifiant unique de chaque ligne de commande, repr�sentant chaque article distinct dans la commande
    OrderQty,               -- Quantit� command�e pour chaque produit
    ProductID,              -- Identifiant du produit command�, permettant de relier cette table aux informations produits
    UnitPrice,              -- Prix unitaire de chaque produit dans la commande, permettant de calculer le chiffre d'affaires
    UnitPriceDiscount,      -- Montant de remise par unit�, indiquant les r�ductions appliqu�es
    LineTotal               -- Montant total de la ligne, incluant les r�ductions (calcul� comme OrderQty * (UnitPrice - UnitPriceDiscount))
FROM 
    [AdventureWorks2019].[Sales].[SalesOrderDetail]  -- Sp�cifie la table � partir de laquelle les donn�es sont extraites

