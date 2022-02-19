-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
-- Uso		$ mysql -h localhost:3306 -u adminDB -p academicoMinimo < profesor.sql
-- ---------------------------------------------------------------------

USE `academicoMinimo`;
DROP TABLE IF EXISTS `de`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `de` ( -- tutor/profesor/docente/maestro
	`a` CHAR(5) CHARACTER SET utf8 NOT NULL PRIMARY KEY, -- ID del tutor [PK]
	`b` VARCHAR(64) CHARACTER SET utf8 NOT NULL -- apellido(s), nombre(s)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;