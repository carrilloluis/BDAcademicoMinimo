-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
-- Uso		$ mysql -h localhost:3306 -u adminDB -p academicoMinimo < matricula.sql
-- ---------------------------------------------------------------------

USE `academicoMinimo`;
DROP TABLE IF EXISTS `cd`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `cd` ( -- matricula/inscripción
	`a` SMALLINT UNSIGNED NOT NULL, -- ID del estudiante/código [FK]
	`b` CHAR(6) CHARACTER SET utf8 NOT NULL, -- código del curso [FK]
	UNIQUE KEY(`a`, `b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;
ALTER TABLE `cd` ADD CONSTRAINT FOREIGN KEY (`a`) REFERENCES ab(a);
ALTER TABLE `cd` ADD CONSTRAINT FOREIGN KEY (`b`) REFERENCES bc(a);