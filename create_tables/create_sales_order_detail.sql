SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE DATABASE IF NOT EXISTS `rox` DEFAULT CHARACTER SET `utf8`;
USE `rox`;
CREATE TABLE IF NOT EXISTS `rox`.`sales_order_detail` (
    `SalesOrderID` INT NOT NULL,
    `SalesOrderDetailID` INT NOT NULL,
    `CarrierTrackingNumber` VARCHAR(255),
    `OrderQty` INT NOT NULL,
    `ProductID` INT NOT NULL,
    `SpecialOfferID` INT NOT NULL,
    `UnitPrice` DECIMAL(16,4) NOT NULL,
    `UnitPriceDiscount` DECIMAL(16,4) NOT NULL,
    `LineTotal` DECIMAL(16,4) NOT NULL,
    `rowguid` VARCHAR(255) NOT NULL,
    `ModifiedDate` DATETIME NOT NULL,
    PRIMARY KEY (`SalesOrderDetailID`),
    INDEX `SalesOrderID_idx` (`SalesOrderID`),
    INDEX `SpecialOfferIDProductID_idx` (`SpecialOfferID`,`ProductID`),
    FOREIGN KEY (`SalesOrderID`) REFERENCES `rox`.`sales_order_header` (`SalesOrderID`)
    FOREIGN KEY (`SpecialOfferID`,`ProductID`) REFERENCES `rox`.`special_offer_product` (`SpecialOfferID`,`ProductID`)
)

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;