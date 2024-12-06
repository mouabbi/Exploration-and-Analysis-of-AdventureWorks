# AdventureWorks Sales and Territory Analysis

This project explores and analyzes the sales data of the fictional company AdventureWorks. We focus on understanding the relationships between various tables that contain sales and territory information. Below are the details of the key tables used in this analysis.

# **Table: `Sales.SalesOrderHeader`**

The **`Sales.SalesOrderHeader`** table contains summary-level information about sales orders, such as dates, customers, amounts, shipping details, and associated sales representatives. It serves as the primary table for storing sales transaction metadata in a sales system.

---

## **Attributes Documentation**

| **Column Name**            | **Data Type**       | **Description**                                                                                     | **Relationships**                                                                 |
|-----------------------------|---------------------|-----------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------------------|
| **SalesOrderID**            | INT (PK)           | Unique identifier for each sales order.                                                            | Foreign key in **`SalesOrderDetail`** to link order details to the header.        |
| **RevisionNumber**          | TINYINT            | Revision number to track changes to the sales order.                                               | No direct relationship.                                                          |
| **OrderDate**               | DATETIME           | The date when the order was placed.                                                                | No direct relationship.                                                          |
| **DueDate**                 | DATETIME           | The expected delivery date of the order.                                                           | No direct relationship.                                                          |
| **ShipDate**                | DATETIME (NULLABLE)| The actual shipping date of the order.                                                             | No direct relationship.                                                          |
| **Status**                  | TINYINT            | Status of the order (e.g., 1 = In Process, 2 = Complete).                                           | No direct relationship.                                                          |
| **OnlineOrderFlag**         | BIT                | Indicates if the order was placed online (1 = Yes, 0 = No).                                        | No direct relationship.                                                          |
| **SalesOrderNumber**        | NVARCHAR(25)       | Unique order number, automatically generated (e.g., SO12345).                                      | No direct relationship.                                                          |
| **CustomerID**              | INT (FK)           | Foreign key linking to **`Sales.Customer`** to identify the customer placing the order.            | Links to **`Sales.Customer`** for customer information.                          |
| **SalesPersonID**           | INT (FK, NULLABLE) | Foreign key linking to **`Sales.SalesPerson`** to identify the salesperson associated with the order.| Links to **`Sales.SalesPerson`** for performance analysis.                       |
| **TerritoryID**             | INT (FK, NULLABLE) | Foreign key linking to **`Sales.SalesTerritory`** to identify the territory associated with the order.| Links to **`Sales.SalesTerritory`** for regional sales analysis.                 |
| **BillToAddressID**         | INT (FK)           | Foreign key linking to **`Person.Address`** for billing address details.                           | Links to **`Person.Address`** for billing address details.                       |
| **ShipToAddressID**         | INT (FK)           | Foreign key linking to **`Person.Address`** for shipping address details.                          | Links to **`Person.Address`** for shipping address details.                      |
| **ShipMethodID**            | INT (FK)           | Foreign key linking to **`Purchasing.ShipMethod`** for the shipping method used.                   | Links to **`Purchasing.ShipMethod`** for shipping method details.                |
| **CreditCardID**            | INT (FK, NULLABLE) | Foreign key linking to **`Sales.CreditCard`** for payment details.                                 | Links to **`Sales.CreditCard`** for credit card information.                     |
| **CreditCardApprovalCode**  | NVARCHAR(15)       | Approval code for credit card payments.                                                           | No direct relationship.                                                          |
| **CurrencyRateID**          | INT (FK, NULLABLE) | Foreign key linking to **`Sales.CurrencyRate`** for currency conversion details.                   | Links to **`Sales.CurrencyRate`** for currency rate information.                 |
| **SubTotal**                | MONEY              | The pre-tax total for the order.                                                                   | No direct relationship.                                                          |
| **TaxAmt**                  | MONEY              | Tax amount applied to the order.                                                                   | No direct relationship.                                                          |
| **Freight**                 | MONEY              | Shipping costs for the order.                                                                      | No direct relationship.                                                          |
| **TotalDue**                | MONEY              | The total amount due (calculated as SubTotal + TaxAmt + Freight).                                  | No direct relationship.                                                          |
| **Comment**                 | NVARCHAR(128)      | Comments or notes about the order.                                                                | No direct relationship.                                                          |
| **rowguid**                 | UNIQUEIDENTIFIER   | Unique identifier for database synchronization purposes.                                           | No direct relationship.                                                          |
| **ModifiedDate**            | DATETIME           | The last modification date of the record.                                                         | No direct relationship.                                                          |

---

## **Key Relationships**

1. **`CustomerID` → `Sales.Customer`**  
   Links the order to a specific customer. This allows the system to associate customer details like name, contact, and history with the order.

2. **`SalesPersonID` → `Sales.SalesPerson`**  
   Links the order to a specific salesperson. This is useful for tracking sales performance and assigning responsibilities.

3. **`TerritoryID` → `Sales.SalesTerritory`**  
   Associates the order with a geographical territory, enabling sales performance analysis by region.

4. **`BillToAddressID` & `ShipToAddressID` → `Person.Address`**  
   Links to addresses for billing and shipping, critical for logistics and customer correspondence.

5. **`ShipMethodID` → `Purchasing.ShipMethod`**  
   Links the order to a specific shipping method (e.g., FedEx, UPS), used for managing logistics and optimizing delivery costs.

6. **`CreditCardID` → `Sales.CreditCard`**  
   Links the order to credit card details for payment processing and validation.

7. **`CurrencyRateID` → `Sales.CurrencyRate`**  
   Links the order to a specific exchange rate when dealing with orders in multiple currencies.

---







# Table: `Sales.SalesOrderDetail`

The **`Sales.SalesOrderDetail`** table represents the details of each individual item in a sales order. It contains information about the products or services included in the order, the quantities, and the prices for each line item.

---

## Documentation of Key Attributes

| **Column Name**             | **Data Type**           | **Description**                                                                                       | **Relations**                                                                                       |
|-----------------------------|-------------------------|-------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------------------------------------|
| **SalesOrderID**            | `INT` (FK)              | Foreign key referencing **`Sales.SalesOrderHeader`** to associate each detail with a specific order. | Related to **Sales.SalesOrderHeader** to link the order details to the main order.                |
| **SalesOrderDetailID**      | `INT` (PK)              | Primary key that uniquely identifies each order detail.                                               | A unique identifier for each order line item.                                                     |
| **OrderQty**                | `SMALLINT`              | The quantity of the product or service ordered.                                                      | Affects the total quantity for the sales order.                                                   |
| **ProductID**               | `INT` (FK)              | Foreign key referencing **`Production.Product`** for the product included in the order detail.        | Related to **Production.Product** to get product details like name, price, and category.           |
| **UnitPrice**               | `MONEY`                 | The price of the product or service at the time of order placement.                                   | Affects the total amount for the order detail.                                                    |
| **UnitPriceDiscount**       | `MONEY`                 | The discount applied to the product or service unit price.                                            | Affects the final price of the item in the order.                                                 |
| **LineTotal**               | `MONEY`                 | The total amount for the line item (`OrderQty * UnitPrice - UnitPriceDiscount`).                      | A calculated field representing the line item’s total amount.                                     |
| **CarrierTrackingNumber**   | `NVARCHAR(25)`          | Tracking number for the shipping carrier if available.                                               | Affects the tracking and delivery process for the product.                                        |
| **DateShipped**             | `DATETIME` (NULLABLE)   | The date the product or service was shipped.                                                          | Affects the shipping status and delivery timeline.                                                |
| **ShipMethodID**            | `INT` (FK)              | Foreign key referencing **`Purchasing.ShipMethod`** to specify the method of shipping used.           | Related to **Purchasing.ShipMethod** to determine the shipping method used.                       |
| **OrderLineStatus**         | `TINYINT`               | Status of the line item (e.g., backordered, shipped, canceled).                                      | Affects the order processing and fulfillment status.                                              |
| **ModifiedDate**            | `DATETIME`              | The date and time when the order detail was last modified.                                            | Affects the tracking of changes in the order details.                                             |

---

## Main Relationships

1. **`SalesOrderID` → `Sales.SalesOrderHeader`**  
   - Relationship to associate the order detail with a specific sales order.  
   - Essential for linking each line item to the main sales order.  

2. **`ProductID` → `Production.Product`**  
   - Relationship to fetch details of the product or service ordered.  
   - Useful for analyzing product sales and inventory management.  

3. **`ShipMethodID` → `Purchasing.ShipMethod`**  
   - Relationship to define the shipping method used for the specific order detail.  
   - Crucial for logistics and optimizing shipping processes.  

---


# Table: `Sales.SalesTerritory`

The **`Sales.SalesTerritory`** table contains information about sales territories, which represent geographic regions where sales activities are conducted. It is used to organize and analyze sales data based on territories and to link sales data to specific regions.

---

## Documentation of Key Attributes

| **Column Name**        | **Data Type**       | **Description**                                                                 | **Relationships**                                                      |
|-------------------------|---------------------|---------------------------------------------------------------------------------|-------------------------------------------------------------------------|
| **TerritoryID**         | `INT` (PK)         | Primary key that uniquely identifies a sales territory.                         | Linked to other tables like `Sales.SalesOrderHeader` for territory data.|
| **Name**                | `NVARCHAR(50)`     | Name of the sales territory (e.g., North America, Europe).                     | None directly.                                                         |
| **CountryRegionCode**   | `NVARCHAR(3)`      | ISO code for the country or region associated with the territory.              | Links indirectly to geography-related data.                            |
| **Group**               | `NVARCHAR(50)`     | Grouping of territories (e.g., North America might belong to the "America" group).| None directly.                                                         |
| **SalesYTD**            | `MONEY`            | Year-to-date sales revenue for this territory.                                 | None directly.                                                         |
| **SalesLastYear**       | `MONEY`            | Total sales revenue for this territory in the previous year.                   | None directly.                                                         |
| **CostYTD**             | `MONEY`            | Year-to-date cost for this territory.                                          | None directly.                                                         |
| **CostLastYear**        | `MONEY`            | Total cost for this territory in the previous year.                            | None directly.                                                         |
| **rowguid**             | `UNIQUEIDENTIFIER` | Unique identifier for database replication and synchronization.                | None directly.                                                         |
| **ModifiedDate**        | `DATETIME`         | Date and time when the record was last updated.                                | None directly.                                                         |

---

## Key Relationships

1. **`TerritoryID` → `Sales.SalesOrderHeader`**  
   - Establishes a link between a sales order and the territory where the sale occurred.
   - Enables grouping of orders by territory for reporting and analysis.

---







# Additional Tables in the Sales Schema 

Here’s a summary of other related tables 

---

## 1. `Sales.SalesPerson`

| Attribute         | Description                                                                 |
|-------------------|-----------------------------------------------------------------------------|
| `BusinessEntityID` | Unique identifier linking to the employee table.                           |
| `TerritoryID`      | Region or territory assigned to the salesperson.                           |
| `SalesQuota`       | Monthly or yearly sales target for the salesperson.                        |
| `Bonus`            | Monetary incentive awarded to the salesperson.                            |
| `CommissionPct`    | Commission percentage for each sale.                                       |
| `SalesYTD`         | Total sales made by the salesperson year-to-date.                         |
| `SalesLastYear`    | Total sales made by the salesperson in the previous year.                 |
| `rowguid`          | Globally unique identifier for replication.                               |
| `ModifiedDate`     | Last date when the record was updated.                                    |

---

## 2. `Sales.Customer`

| Attribute         | Description                                                                |
|-------------------|----------------------------------------------------------------------------|
| `CustomerID`       | Unique identifier for each customer.                                      |
| `PersonID`         | Links to an individual person (optional).                                |
| `StoreID`          | Links to a store if the customer is a business (optional).               |
| `TerritoryID`      | Links the customer to their geographical region.                         |
| `AccountNumber`    | Unique account number assigned to the customer.                          |
| `rowguid`          | Globally unique identifier for replication.                              |
| `ModifiedDate`     | Last date when the record was updated.                                   |

---

## 3. `Sales.SpecialOfferProduct`

| Attribute         | Description                                                                |
|-------------------|----------------------------------------------------------------------------|
| `SpecialOfferID`   | Identifier for the special promotional offer.                             |
| `ProductID`        | Identifier for the product associated with the offer.                    |
| `rowguid`          | Globally unique identifier for replication.                              |
| `ModifiedDate`     | Last date when the record was updated.                                   |

---

## 4. `Production.Product`

| Attribute            | Description                                                             |
|----------------------|-------------------------------------------------------------------------|
| `ProductID`           | Unique identifier for the product.                                     |
| `Name`                | Name of the product.                                                  |
| `ProductNumber`       | Internal identifier or SKU for the product.                           |
| `Color`               | Color of the product (if applicable).                                 |
| `StandardCost`        | Manufacturing cost of the product.                                    |
| `ListPrice`           | Price at which the product is sold.                                   |
| `ProductSubcategoryID`| Identifier linking to the product subcategory.                        |
| `ProductCategoryID`   | Identifier linking to the product category.                           |
| `SellStartDate`       | Date when the product became available for sale.                      |
| `SellEndDate`         | Date when the product was discontinued (if applicable).               |
| `rowguid`             | Globally unique identifier for replication.                           |
| `ModifiedDate`        | Last date when the record was updated.                                |

---

## 5. `Production.ProductSubcategory`

| Attribute            | Description                                                             |
|----------------------|-------------------------------------------------------------------------|
| `ProductSubcategoryID`| Unique identifier for the product subcategory.                        |
| `ProductCategoryID`   | Identifier linking to the product category.                           |
| `Name`                | Name of the subcategory.                                              |
| `rowguid`             | Globally unique identifier for replication.                           |
| `ModifiedDate`        | Last date when the record was updated.                                |

---

## 6. `Production.ProductCategory`

| Attribute          | Description                                                              |
|--------------------|--------------------------------------------------------------------------|
| `ProductCategoryID` | Unique identifier for the product category.                             |
| `Name`              | Name of the category.                                                  |
| `rowguid`           | Globally unique identifier for replication.                            |
| `ModifiedDate`      | Last date when the record was updated.                                 |

---

## 7. `HumanResources.Employee`

| Attribute          | Description                                                                |
|--------------------|----------------------------------------------------------------------------|
| `BusinessEntityID`  | Unique identifier linking the employee to the person table.               |
| `NationalIDNumber`  | Government-issued identification number for the employee.                 |
| `LoginID`           | Employee's login or user ID.                                               |
| `JobTitle`          | The position held by the employee.                                         |
| `BirthDate`         | Employee's date of birth.                                                  |
| `MaritalStatus`     | Employee's marital status.                                                 |
| `Gender`            | Employee's gender.                                                         |
| `HireDate`          | The date the employee was hired.                                          |
| `SalariedFlag`      | Whether the employee is salaried or hourly.                               |
| `VacationHours`     | The number of vacation hours the employee has accrued.                    |
| `SickLeaveHours`    | The number of sick leave hours the employee has accrued.                  |
| `rowguid`           | Globally unique identifier for replication.                               |
| `ModifiedDate`      | Last date when the record was updated.                                    |

---

## 8. `Person.Person`

| Attribute          | Description                                                                |
|--------------------|----------------------------------------------------------------------------|
| `BusinessEntityID`  | Unique identifier for the person.                                         |
| `PersonType`        | Specifies if the person is an individual or a company.                    |
| `FirstName`         | First name of the person.                                                 |
| `MiddleName`        | Middle name of the person (if available).                                 |
| `LastName`          | Last name of the person.                                                  |
| `NameStyle`         | Whether the name follows Western or Eastern name styles.                  |
| `Title`             | The person's title (e.g., Mr., Dr., etc.).                                |
| `Suffix`            | Suffix used by the person (e.g., Jr., Sr.).                               |
| `EmailAddress`      | Email address of the person.                                              |
| `PhoneNumber`       | Phone number of the person.                                               |
| `PhoneNumberType`   | Type of phone number (e.g., home, work).                                  |
| `rowguid`           | Globally unique identifier for replication.                               |
| `ModifiedDate`      | Last date when the record was updated.                                    |

---

## Relationships Overview

| Primary Table         | Related Table          | Key Relationship                            |
|-----------------------|-----------------------|---------------------------------------------|
| `SalesOrderHeader`     | `Customer`            | Links orders to customer details.           |
| `SalesOrderDetail`     | `Product`             | Links order lines to specific products.     |
| `Sales.SalesPerson`    | `SalesTerritory`      | Assigns salespeople to territories.         |
| `SalesOrderDetail`     | `SpecialOfferProduct` | Tracks promotional offers for products.     |
| `HumanResources.Employee` | `Person.Person`   | Links employees to their personal details.  |


## Next Steps  

Once the data exploration and documentation are complete, proceed to:  
[Data Cleaning and Preparation Guide](../Documentation/DataCleaning.md) to start identifying anomalies, handling missing values, removing duplicates, and ensuring data consistency for high-quality analysis.