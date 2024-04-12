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
-- Table `mydb`.`titulo`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`titulo` (
  `idtitulo` INT NOT NULL,
  `titulos` VARCHAR(45) NULL,
  PRIMARY KEY (`idtitulo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`texto`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`texto` (
  `idtexto` INT NOT NULL,
  `textos` TEXT NULL,
  `titulo_idtitulo` INT NOT NULL,
  PRIMARY KEY (`idtexto`, `titulo_idtitulo`),
  INDEX `fk_texto_titulo1_idx` (`titulo_idtitulo` ASC) VISIBLE,
  CONSTRAINT `fk_texto_titulo1`
    FOREIGN KEY (`titulo_idtitulo`)
    REFERENCES `mydb`.`titulo` (`idtitulo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`doc`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`doc` (
  `iddoc` INT NOT NULL,
  `pdf` LONGBLOB NULL,
  PRIMARY KEY (`iddoc`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;