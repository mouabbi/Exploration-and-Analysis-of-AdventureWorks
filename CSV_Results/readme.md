# 📂 AdventureWorks Sales Data CSVs

This folder contains CSV files that are the results of SQL queries executed on the AdventureWorks database. Each file represents the output of specific queries aimed at analyzing various aspects of sales, customer behaviors, product details, and regional performance.

## Contents

### CSV Files

1. **`Customer.csv`**  
   - **Columns**:  
     `CustomerID`, `TerritoryID`, `Title`, `FirstName`, `LastName`, `EmailPromotion`
   - **Description**:  
     Contains customer data, including their unique ID, assigned sales territory, title, name, and preferences for receiving promotional emails.

   #### Script: Customer and Person Table Join  
   The following SQL script was used to generate the data for `Customer.csv`. It joins the `Customer` table with the `Person` table to retrieve detailed information about customers and their associated personal details.  

   ```sql
   -- Script de jointure entre les tables Customer et Person

   SELECT 
       c.CustomerID,                  -- Identifiant unique du client
       c.TerritoryID,                 -- Identifiant du territoire de vente
       p.Title,                       -- Titre de la personne (ex. M., Mme)
       p.FirstName,                   -- Prénom de la personne
       p.LastName,                    -- Nom de famille de la personne
       p.EmailPromotion               -- Indicateur d'adhésion aux promotions par email

   FROM 
       [AdventureWorks2019].[Sales].[Customer] AS c  -- Table des clients
   JOIN 
       [AdventureWorks2019].[Person].[Person] AS p ON c.PersonID = p.BusinessEntityID  -- Jointure sur PersonID pour lier les informations client et personne  ```


2. **`Product.csv`**  
   - **Columns**:  
     `SpecialOfferID`, `ProductID`, `ProductName`, `ProductNumber`, `Color`, `StandardCost`, `ListPrice`, `SellStartDate`, `SellEndDate`, `SubcategoryName`, `CategoryName`
   - **Description**:  
     Contains details about products, their pricing, availability, and categorization. This includes information about products linked to special offers, subcategories, and main categories for better organization.

   #### Script: SpecialOfferProduct and Product Details join
   The following SQL script was used to generate the data for `Product.csv`. It performs a series of joins to link products with their associated special offers, subcategories, and categories.  

   ```sql
   -- Script de jointure basé sur SpecialOfferProduct pour extraire les informations de produits associés aux offres spéciales

   SELECT 
       sop.SpecialOfferID,               -- Identifiant de l'offre spéciale
       sop.ProductID,                    -- Identifiant unique du produit associé à une offre spéciale
       p.Name AS ProductName,            -- Nom du produit pour référence
       p.ProductNumber,                  -- Numéro de référence du produit
       p.Color,                          -- Couleur du produit
       p.StandardCost,                   -- Coût standard du produit
       p.ListPrice,                      -- Prix de liste du produit
       p.SellStartDate,                  -- Date de début de vente du produit
       p.SellEndDate,                    -- Date de fin de vente du produit, si applicable
       ps.Name AS SubcategoryName,       -- Nom de la sous-catégorie du produit
       pc.Name AS CategoryName           -- Nom de la catégorie principale du produit

   FROM 
       [AdventureWorks2019].[Sales].[SpecialOfferProduct] AS sop  -- Table principale liant produits et offres spéciales
   LEFT JOIN 
       [AdventureWorks2019].[Production].[Product] AS p ON sop.ProductID = p.ProductID  -- Jointure pour récupérer les informations du produit
   LEFT JOIN 
       [AdventureWorks2019].[Production].[ProductSubcategory] AS ps ON p.ProductSubcategoryID = ps.ProductSubcategoryID  -- Jointure pour lier la sous-catégorie au produit
   LEFT JOIN 
       [AdventureWorks2019].[Production].[ProductCategory] AS pc ON ps.ProductCategoryID = pc.ProductCategoryID  -- Jointure pour lier la catégorie principale à la sous-catégorie  ```


3. **`SalesOrderDetail.csv`**  
   - **Columns**:  
     `SalesOrderID`, `SalesOrderDetailID`, `OrderQty`, `ProductID`, `UnitPrice`, `UnitPriceDiscount`, `LineTotal`
   - **Description**:  
     This file contains item-level details of sales orders, providing insights into ordered quantities, product IDs, unit prices, discounts, and the total value for each line item.

   #### Script: SalesOrderDetail Data Cleaning  
   The following SQL script was used to generate the data for `SalesOrderDetail.csv`, it extract and clean data from the `SalesOrderDetail` table. The script includes key details for each sales order line, ensuring the data is accurate and ready for analysis.

   ```sql
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
       [AdventureWorks2019].[Sales].[SalesOrderDetail]  -- Spécifie la table à partir de laquelle les données sont extraites   ```


4. **`SalesOrderHeader.csv`**  
   - **Columns**:  
     `SalesOrderID`, `OrderDate`, `DueDate`, `ShipDate`, `CustomerID`, `SalesPersonID`, `TerritoryID`, `Freight`, `TotalDue`, `OrderYear`, `OrderMonth`
   - **Description**:  
     This file provides an overview of sales orders, including critical dates (order, due, and shipment), associated customers, sales personnel, territories, shipping costs, and total financial details. Additional columns `OrderYear` and `OrderMonth` are derived for time-based analysis.

   #### Script: SalesOrderHeader Data Cleaning  
   The following SQL script was used to generate data for "SalesOrderHeader.csv" clean and extract data from the `SalesOrderHeader` table, ensuring it is formatted for analysis and includes both raw and derived columns for better insights.

   ```sql
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
       [AdventureWorks2019].[Sales].[SalesOrderHeader]  -- Spécifie la table à partir de laquelle les données sont extraites  ```


5. **`SalesPerson.csv`**  
   - **Columns**:  
     `BusinessEntityID`, `TerritoryID`, `SalesQuota`, `Bonus`, `CommissionPct`, `SalesYTD`, `SalesLastYear`, `JobTitle`, `HireDate`, `Gender`, `FirstName`, `LastName`, `Title`
   - **Description**:  
     This file contains performance metrics and demographics for sales personnel, including their sales targets, commissions, bonuses, and annual sales performance. It also includes personal details such as job title, hire date, and gender.

   #### Script: SalesPerson and Employee Table Join  
   The following SQL script joins the `SalesPerson` table with the `Employee` table to retrieve detailed performance data of sales personnel, along with their demographics and job-related information.

   ```sql
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
       [AdventureWorks2019].[HumanResources].[Employee] AS e ON sp.BusinessEntityID = e.BusinessEntityID  -- Jointure sur l'ID d'employé  ```


6. **`SalesTerritory.csv`**  
   - **Columns**:  
     `TerritoryID`, `Name`, `CountryRegionCode`, `Group`, `SalesYTD`, `SalesLastYear`, `CostYTD`, `CostLastYear`
   - **Description**:  
     This file contains data about sales territories, including their geographic identifiers, performance metrics for the current year and the previous year, as well as associated costs. It allows for the analysis of regional sales performance and cost comparisons.

   #### Script: SalesTerritory Data Extraction  
   This SQL script extracts the relevant sales territory data, including performance and cost metrics, and can be adjusted with additional filters if needed.

   ```sql
   -- Script de nettoyage pour la table SalesTerritory

   SELECT 
       TerritoryID,            -- Identifiant unique du territoire, utilisé comme clé primaire et permettant de lier cette table à SalesOrderHeader
       Name,                   -- Nom du territoire, utile pour l'analyse par région
       CountryRegionCode,      -- Code du pays ou de la région, facilitant l'analyse géographique
       [Group],                -- Catégorie géographique du territoire (ex. Amérique du Nord, Europe)
       SalesYTD,              -- Chiffre d'affaires cumulé de l'année jusqu'à la date d'analyse, permettant de comparer les performances régionales
       SalesLastYear,         -- Chiffre d'affaires de l'année précédente, utile pour l'analyse des tendances
       CostYTD,               -- Coûts cumulés pour l'année en cours dans le territoire, utilisé pour évaluer la rentabilité
       CostLastYear           -- Coûts de l'année précédente, pour analyser les variations des coûts
   FROM 
       [AdventureWorks2019].[Sales].[SalesTerritory]  -- Spécifie la table à partir de laquelle les données sont extraites

   -- (Optionnel) Vous pouvez ajouter une clause WHERE ici pour filtrer les données si nécessaire
   -- WHERE SalesYTD > 0  -- Exemple de filtre pour exclure les territoires sans chiffre d'affaire
 ```


## Usage
These CSV files are ready to be imported into Power BI or other analytics tools for visualizations and insights. They serve as a basis for analyzing sales performance, customer behavior, product details, and regional metrics.

