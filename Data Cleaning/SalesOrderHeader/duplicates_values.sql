-- SQL script to identify duplicate rows in the SalesOrderHeader table by grouping columns.

SELECT 
    -- List of columns from SalesOrderHeader that are being checked for duplicates.
    SalesOrderID,  -- Order identifier.
    RevisionNumber, -- Revision number of the order.
    OrderDate, -- The date the order was placed.
    DueDate, -- The date the order is due.
    ShipDate, -- The actual date the order was shipped.
    Status, -- The status of the order (e.g., pending, completed).
    OnlineOrderFlag, -- Indicates if the order was placed online (1 for yes, 0 for no).
    SalesOrderNumber, -- Unique sales order number.
    PurchaseOrderNumber, -- Purchase order number associated with the order.
    AccountNumber, -- The account number for the customer.
    CustomerID, -- The ID of the customer.
    SalesPersonID, -- The ID of the salesperson associated with the order.
    TerritoryID, -- The sales territory ID for the order.
    BillToAddressID, -- The billing address ID for the customer.
    ShipToAddressID, -- The shipping address ID for the customer.
    ShipMethodID, -- The shipping method used for the order.
    CreditCardID, -- Credit card ID used for the order (if applicable).
    CreditCardApprovalCode, -- The approval code for the credit card (if applicable).
    CurrencyRateID, -- The ID of the currency rate applied to the order.
    SubTotal, -- The subtotal before taxes and shipping.
    TaxAmt, -- The tax amount applied to the order.
    Freight, -- The freight cost for shipping.
    TotalDue, -- The total amount due for the order (including taxes, shipping, etc.).
    Comment, -- Any comments associated with the order.
    rowguid, -- A globally unique identifier (GUID) for the row.
    ModifiedDate, -- The date when the row was last modified.
    COUNT(*) AS DuplicateCount -- Counts the number of duplicate rows for the same set of values.

-- Specifying the table to query from.
FROM [AdventureWorks2019].[Sales].[SalesOrderHeader]

-- Grouping by all the specified columns to identify duplicates based on matching column values.
GROUP BY 
    SalesOrderID, 
    RevisionNumber, 
    OrderDate, 
    DueDate, 
    ShipDate, 
    Status, 
    OnlineOrderFlag, 
    SalesOrderNumber, 
    PurchaseOrderNumber, 
    AccountNumber, 
    CustomerID, 
    SalesPersonID, 
    TerritoryID, 
    BillToAddressID, 
    ShipToAddressID, 
    ShipMethodID, 
    CreditCardID, 
    CreditCardApprovalCode, 
    CurrencyRateID, 
    SubTotal, 
    TaxAmt, 
    Freight, 
    TotalDue, 
    Comment, 
    rowguid, 
    ModifiedDate

-- Filtering the results to only show those with more than 1 occurrence of the same data.
HAVING COUNT(*) > 1;  -- Only show groups where there are more than one row (duplicates).
