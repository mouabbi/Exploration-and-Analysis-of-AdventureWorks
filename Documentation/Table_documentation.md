# Table Documentation 

This project explores and analyzes the sales data of the fictional company AdventureWorks. We focus on understanding the relationships between various tables that contain sales and territory information. Below are the details of the key tables used in this analysis.

## Table 1: SalesOrderHeader

This table contains general information about each order placed by customers. Each record represents a unique order.

| Column Name                     | Description                                                         |
|---------------------------------|---------------------------------------------------------------------|
| SalesOrderID                    | Unique identifier for the order, used as primary key.              |
| RevisionNumber                  | Revision number of the order.                                      |
| OrderDate                       | Date when the order was placed, useful for sales period analysis.   |
| DueDate                         | Expected date for processing the order.                             |
| ShipDate                        | Actual shipping date of the order, useful for evaluating delivery times. |
| Status                          | Status of the order (e.g., pending, completed, canceled).          |
| OnlineOrderFlag                 | Indicator if the order was placed online.                           |
| SalesOrderNumber                | Unique number for the order, aiding user identification.            |
| PurchaseOrderNumber             | Associated purchase order number, if applicable.                   |
| AccountNumber                   | Account number of the customer placing the order.                  |
| CustomerID                      | Identifier for the customer, useful for segmenting sales.          |
| SalesPersonID                   | Identifier for the salesperson, allowing analysis of each salesperson's performance. |
| TerritoryID                     | Identifier for the sales territory, linking to the SalesTerritory table. |
| BillToAddressID                 | Identifier for the billing address.                                 |
| ShipToAddressID                 | Identifier for the shipping address.                                |
| ShipMethodID                    | Identifier for the shipping method used.                            |
| CreditCardID                    | Identifier for the credit card used for the order.                 |
| CreditCardApprovalCode          | Approval code from the credit card processor.                      |
| CurrencyRateID                  | Identifier for the currency rate used in the transaction.           |
| SubTotal                        | Total amount of the order before taxes and shipping.               |
| TaxAmt                          | Amount of tax applied to the order.                                 |
| Freight                         | Shipping cost associated with the order.                            |
| TotalDue                        | Total amount due for the order after taxes and freight.            |
| Comment                         | Additional comments related to the order.                          |
| rowguid                         | Unique identifier for replication purposes.                         |
| ModifiedDate                    | Date of the last modification of the record.                        |


## Table 2: SalesOrderDetail

This table provides details of each item in the orders, allowing analysis of product-specific information.

| Column Name              | Description                                                         |
|--------------------------|---------------------------------------------------------------------|
| SalesOrderID             | Foreign key linking this table to SalesOrderHeader.                 |
| SalesOrderDetailID       | Unique identifier for each order line item, representing distinct items in the order. |
| CarrierTrackingNumber     | Carrier tracking number, useful for logistical tracking.            |
| OrderQty                 | Quantity ordered for each product.                                  |
| ProductID                | Identifier for the ordered product, linking to product information. |
| UnitPrice                | Unit price of each product in the order, enabling revenue calculations. |
| UnitPriceDiscount        | Discount amount per unit, indicating applied discounts.            |
| LineTotal                | Total amount for the line item, including discounts. Calculated as (OrderQty * (UnitPrice - UnitPriceDiscount)). |
| ModifiedDate             | Date of the last modification of the record.                        |

## Table 3: SalesTerritory

This table contains information about sales territories, enabling analysis of regional performance.

| Column Name          | Description                                                         |
|----------------------|---------------------------------------------------------------------|
| TerritoryID          | Unique identifier for the territory, used as primary key.           |
| Name                 | Name of the territory, useful for regional analysis.                |
| CountryRegionCode    | Code for the country or region, facilitating geographical analysis.  |
| Group                | Geographic category of the territory (e.g., North America, Europe). |
| SalesYTD             | Cumulative sales amount for the year to date, useful for comparing regional performance. |
| SalesLastYear        | Sales amount from the previous year, useful for trend analysis.     |
| CostYTD              | Cumulative costs for the current year in the territory, used to evaluate profitability. |
| CostLastYear         | Costs from the previous year, used to analyze cost variations.      |
| ModifiedDate         | Date of the last modification of the record. 


Understanding the relationships between these tables is crucial for integrating sales data and creating a coherent and accurate model for analysis:

- **SalesOrderHeader ↔ SalesOrderDetail**: The `SalesOrderID` column is present in both tables, linking general order information with its specific details.
- **SalesOrderHeader ↔ SalesTerritory**: The `TerritoryID` column in `SalesOrderHeader` connects this table to `SalesTerritory`, allowing identification of the territory for each order.
- **SalesOrderHeader ↔ Customer**: The `CustomerID` column in `SalesOrderHeader` connects orders to the customers who placed them.
- **SalesOrderHeader ↔ SalesPerson**: The `SalesPersonID` column in `SalesOrderHeader` links to the `SalesPerson` table, allowing performance analysis of each salesperson.
- **SalesOrderDetail ↔ Product**: The `ProductID` column in `SalesOrderDetail` connects line items to the product information.
