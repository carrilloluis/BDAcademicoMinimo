-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
-- Uso		mysql -h localhost:3306 -u adminDB -p academicoMinimo < curso.sql
-- ---------------------------------------------------------------------

USE `academicoMinimo`;
DROP TABLE IF EXISTS `bc`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `bc` ( -- curso/asignatura/materia
	`a` CHAR(6) CHARACTER SET utf8 NOT NULL PRIMARY KEY, -- código/identidicador/númeroCurso
	`b` VARCHAR(64) CHARACTER SET utf8 NOT NULL, -- nombre de la asignatura
	`c` TINYINT(1) UNSIGNED NOT NULL DEFAULT 4 -- creditaje
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;