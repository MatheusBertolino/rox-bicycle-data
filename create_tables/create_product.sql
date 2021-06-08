SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE DATABASE IF NOT EXISTS `rox` DEFAULT CHARACTER SET `utf8`;
USE `rox`;
CREATE TABLE IF NOT EXISTS `rox`.`product` (
    `ProductID` INT NOT NULL,
    `Name` VARCHAR(255) NOT NULL,
    `ProductNumber` VARCHAR(255) NOT NULL,
    `MakeFlag` INT NOT NULL,
    `FinishedGoodsFlag` INT NOT NULL,
    `Color` VARCHAR(255),
    `SafetyStockLevel` INT NOT NULL,
    `ReorderPoint` INT NOT NULL,
    `StandardCost` DECIMAL(16,4) NOT NULL,
    `ListPrice` DECIMAL(16,4) NOT NULL,
    `Size` VARCHAR(255),
    `SizeUnitMeasureCode` VARCHAR(255),
    `WeightUnitMeasureCode` VARCHAR(255),
    `Weight` DECIMAL(16,4),
    `DaysToManufacture` INT NOT NULL,
    `ProductLine` VARCHAR(255),
    `Class` VARCHAR(255),
    `Style` VARCHAR(255),
    `ProductSubcategoryID` INT,
    `ProductModelID` INT,
    `SellStartDate` DATETIME NOT NULL,
    `SellEndDate` DATETIME,
    `DiscontinuedDate` DATETIME,
    `rowguid` VARCHAR(255) NOT NULL,
    `ModifiedDate` DATETIME NOT NULL,
    PRIMARY KEY (`ProductID`)
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;