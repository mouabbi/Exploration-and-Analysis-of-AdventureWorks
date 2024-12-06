-- Extraction Important Columns from the SalesTerritory table
SELECT 
    TerritoryID,            -- Unique identifier for the territory
    Name,                   -- Territory name
    CountryRegionCode,      -- Country or region code
    [Group],                -- Geographical group (e.g., North America, Europe)
    SalesYTD,               -- Year-to-date sales revenue
    SalesLastYear,          -- Sales revenue from the previous year
    CostYTD,                -- Year-to-date costs
    CostLastYear            -- Costs from the previous year
FROM 
    [AdventureWorks2019].[Sales].[SalesTerritory];  -- Table containing the sales territory data
