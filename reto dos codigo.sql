CREATE SCHEMA IF NOT EXISTS `empresa` DEFAULT CHARACTER SET utf8mb4;
USE `empresa`;


CREATE TABLE IF NOT EXISTS `departamento` (
  `id_departamento` INT NOT NULL AUTO_INCREMENT,  
  `nombreDEPMTO` VARCHAR(45) NOT NULL,          
  `ubicacion` VARCHAR(45) NULL,                 
  PRIMARY KEY (`id_departamento`)
) ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS `empleado` (
  `id_empleado` INT NOT NULL AUTO_INCREMENT,      
  `nombre` VARCHAR(45) NOT NULL,                  
  `apellido` VARCHAR(45) NOT NULL,                
  `edad` VARCHAR(45) NULL,                        
  `salario` DECIMAL(10,2) NULL,                 
  `departamento_id_departamento` INT NOT NULL,    
  PRIMARY KEY (`id_empleado`),
  INDEX `fk_empleado_departamento_idx` (`departamento_id_departamento` ASC),
  -- Relación: un departamento tiene muchos empleados
  CONSTRAINT `fk_empleado_departamento`
    FOREIGN KEY (`departamento_id_departamento`)
    REFERENCES `departamento` (`id_departamento`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE = InnoDB;
