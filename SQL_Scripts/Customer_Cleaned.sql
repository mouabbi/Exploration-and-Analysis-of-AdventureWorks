-- Script de jointure entre les tables Customer et Person

SELECT 
    c.CustomerID,                  -- Identifiant unique du client
    c.TerritoryID,                 -- Identifiant du territoire de vente
    p.Title,                       -- Titre de la personne (ex. M., Mme)
    p.FirstName,                   -- Pr�nom de la personne
    p.LastName,                    -- Nom de famille de la personne
    p.EmailPromotion               -- Indicateur d'adh�sion aux promotions par email

FROM 
    [AdventureWorks2019].[Sales].[Customer] AS c  -- Table des clients
JOIN 
    [AdventureWorks2019].[Person].[Person] AS p ON c.PersonID = p.BusinessEntityID  -- Jointure sur PersonID pour lier les informations client et personne
