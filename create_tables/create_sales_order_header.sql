SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE DATABASE IF NOT EXISTS `rox` DEFAULT CHARACTER SET `utf8`;
USE `rox`;
CREATE TABLE IF NOT EXISTS `rox`.`sales_order_header` (
    `SalesOrderID` INT NOT NULL,
    `RevisionNumber` INT NOT NULL,
    `OrderDate` DATETIME NOT NULL,
    `DueDate` DATETIME NOT NULL,
    `ShipDate` DATETIME NOT NULL,
    `Status` INT NOT NULL,
    `OnlineOrderFlag` INT NOT NULL,
    `SalesOrderNumber` VARCHAR(255) NOT NULL,
    `PurchaseOrderNumber` VARCHAR(255),
    `AccountNumber` VARCHAR(255) NOT NULL,
    `CustomerID` INT NOT NULL,
    `SalesPersonID` INT,
    `TerritoryID` INT NOT NULL,
    `BillToAddressID` INT NOT NULL,
    `ShipToAddressID` INT NOT NULL,
    `ShipMethodID` INT NOT NULL,
    `CreditCardID` INT,
    `CreditCardApprovalCode` VARCHAR(255),
    `CurrencyRateID` INT,
    `SubTotal` DECIMAL(16,4) NOT NULL,
    `TaxAmt` DECIMAL(16,4) NOT NULL,
    `Freight` DECIMAL(16,4) NOT NULL,
    `TotalDue` DECIMAL(16,4) NOT NULL,
    `Comment` VARCHAR(255),
    `rowguid` VARCHAR(255) NOT NULL,
    `ModifiedDate` DATETIME NOT NULL,
    PRIMARY KEY (`SalesOrderID`),
    INDEX `CustomerID_idx` (`CustomerID`),
    FOREIGN KEY (`CustomerID`) REFERENCES `rox`.`customer` (`CustomerID`)
)

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;