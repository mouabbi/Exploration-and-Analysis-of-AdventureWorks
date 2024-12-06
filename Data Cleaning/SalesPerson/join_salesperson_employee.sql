SELECT 
    sp.BusinessEntityID,        -- Unique identifier for the employee in the system
    sp.TerritoryID,             -- Sales territory identifier
    sp.SalesQuota,              -- Sales quota assigned to the employee
    sp.Bonus,                   -- Bonus received by the employee
    sp.CommissionPct,           -- Commission percentage assigned to the employee
    sp.SalesYTD,                -- Year-to-date sales revenue
    sp.SalesLastYear,           -- Sales revenue from the previous year
    e.JobTitle,                 -- Job title of the employee
    e.HireDate,                 -- Hire date of the employee
    e.Gender                    -- Gender of the employee
FROM 
    [AdventureWorks2019].[Sales].[SalesPerson] AS sp  -- Table with salesperson performance data
JOIN 
    [AdventureWorks2019].[HumanResources].[Employee] AS e ON sp.BusinessEntityID = e.BusinessEntityID;  -- Join on Employee ID