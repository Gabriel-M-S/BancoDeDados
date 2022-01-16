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
CREATE SCHEMA IF NOT EXISTS `db_blog_pessoal` DEFAULT CHARACTER SET utf8 ;
USE `db_blog_pessoal` ;

-- -----------------------------------------------------
-- Table `tb_temas`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_temas` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `descricao` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_usuarios`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_usuarios` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(255) NOT NULL,
  `usuario` VARCHAR(255) NOT NULL,
  `senha` VARCHAR(255) NOT NULL,
  `foto` VARCHAR(255) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `tb_postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `tb_postagens` (
  `id` BIGINT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(100) NOT NULL,
  `usuario` VARCHAR(1000) NOT NULL,
  `data` DATE NULL,
  `tema_id` BIGINT NULL,
  `usuario_id` BIGINT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_tb_postagens_tb_temas`
    FOREIGN KEY (`tema_id`)
    REFERENCES `tb_temas` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tb_postagens_tb_usuarios1`
    FOREIGN KEY (`usuario_id`)
    REFERENCES `tb_usuarios` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
