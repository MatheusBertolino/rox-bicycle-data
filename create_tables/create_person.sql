SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL';

CREATE DATABASE IF NOT EXISTS `rox` DEFAULT CHARACTER SET `utf8`;
USE `rox`;
CREATE TABLE IF NOT EXISTS `rox`.`person` (
    `BusinessEntityID` INT NOT NULL,
    `PersonType` VARCHAR(255) NOT NULL,
    `NameStyle` INTEGER NOT NULL,
    `Title` VARCHAR(255),
    `FirstName` VARCHAR(255) NOT NULL,
    `MiddleName` VARCHAR(255),
    `LastName` VARCHAR(255) NOT NULL,
    `Suffix` VARCHAR(255),
    `EmailPromotion` INT NOT NULL,
    `AdditionalContactInfo` VARCHAR(10000),
    `Demographics` VARCHAR(10000) NOT NULL,
    `rowguid` VARCHAR(255) NOT NULL,
    `ModifiedDate` DATETIME NOT NULL,
    PRIMARY KEY (`BusinessEntityID`)
);

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;