-- Joining `Customer` and `Person` Tables  
SELECT 
    c.CustomerID,                  -- Unique identifier for the customer
    c.TerritoryID,                 -- Sales territory identifier
    p.Title,                       -- Title of the person (e.g., Mr., Ms.)
    p.FirstName,                   -- First name of the person
    p.LastName,                    -- Last name of the person
    p.EmailPromotion               -- Email promotion subscription status
FROM 
    [AdventureWorks2019].[Sales].[Customer] AS c  -- Customer table
JOIN 
    [AdventureWorks2019].[Person].[Person] AS p ON c.PersonID = p.BusinessEntityID;  -- Join on PersonID
