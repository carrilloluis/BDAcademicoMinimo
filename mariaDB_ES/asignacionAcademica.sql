-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
-- Uso		$ mysql -h localhost:3306 -u adminDB -p academicoMinimo < asignacionAcademica.sql
-- ---------------------------------------------------------------------

USE `academicoMinimo`;
DROP TABLE IF EXISTS `ef`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `ef` ( -- carga académica/asignación académica/responsabilidad
	`a` CHAR(5) CHARACTER SET utf8 NOT NULL, -- id [FK]
	`b` CHAR(6) CHARACTER SET utf8 NOT NULL, -- id del curso [FK]
	UNIQUE KEY(`a`, `b`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;
ALTER TABLE `ef` ADD CONSTRAINT FOREIGN KEY (`a`) REFERENCES de(a);
ALTER TABLE `ef` ADD CONSTRAINT FOREIGN KEY (`b`) REFERENCES bc(a);