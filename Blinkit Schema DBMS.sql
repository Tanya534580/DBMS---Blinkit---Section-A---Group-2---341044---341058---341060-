-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer` (
  `customer_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(25) NOT NULL,
  `last_name` VARCHAR(25) NOT NULL,
  `phone` CHAR(10) NOT NULL,
  `email` VARCHAR(35) NOT NULL,
  `city` VARCHAR(25) NOT NULL,
  PRIMARY KEY (`customer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`store`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`store` (
  `store_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `store_name` VARCHAR(30) NOT NULL,
  `city` VARCHAR(30) NOT NULL,
  `area` VARCHAR(30) NOT NULL,
  PRIMARY KEY (`store_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`product` (
  `product_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_name` VARCHAR(20) NOT NULL,
  `category` VARCHAR(25) NOT NULL,
  `price` DECIMAL(10,2) NOT NULL,
  `store_id` INT NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customer_order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`customer_order` (
  `order_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `store_id` INT NOT NULL,
  `order_datetime` DATETIME NOT NULL,
  `total_amount` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`order_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`order_item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`order_item` (
  `order_item_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `product_id` INT NOT NULL,
  `quantity` INT NOT NULL,
  PRIMARY KEY (`order_item_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`delivery_partner`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`delivery_partner` (
  `partner_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(40) NOT NULL,
  `phone` CHAR(10) NOT NULL,
  `city` VARCHAR(40) NOT NULL,
  `status` VARCHAR(35) NOT NULL,
  PRIMARY KEY (`partner_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`payment` (
  `payment_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` INT NOT NULL,
  `payment_method` VARCHAR(15) NOT NULL,
  `payment_status` VARCHAR(20) NOT NULL,
  `amount` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`payment_id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
