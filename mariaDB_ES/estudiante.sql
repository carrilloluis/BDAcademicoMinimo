-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
-- Uso		$ mysql -h localhost:3306 -u adminDB -p academicoMinimo < estudiante.sql
-- ---------------------------------------------------------------------

CREATE DATABASE IF NOT EXISTS `academicoMinimo` COLLATE 'utf8_unicode_ci';
USE `academicoMinimo`;
DROP TABLE IF EXISTS `ab`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `ab` ( -- estudiante/aprendiz/tutelado
	`a` SMALLINT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT, -- id [PK]
	`b` VARCHAR(64) CHARACTER SET utf8 NOT NULL -- apellido(s), nombre(s)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;