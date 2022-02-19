-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/12/10
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

DROP TABLE IF EXISTS `bc`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `bc` ( -- curso/asignatura/materia
	`a` CHAR(6) CHARACTER SET utf8 NOT NULL PRIMARY KEY, -- código/identidicador/númeroCurso
	`b` VARCHAR(64) CHARACTER SET utf8 NOT NULL, -- nombre de la asignatura
	`c` TINYINT(1) UNSIGNED NOT NULL DEFAULT 4 -- creditaje
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;

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

DROP TABLE IF EXISTS `de`;
DELIMITER //
CREATE TABLE IF NOT EXISTS `de` ( -- tutor/profesor/docente/maestro
	`a` CHAR(5) CHARACTER SET utf8 NOT NULL PRIMARY KEY, -- ID del tutor [PK]
	`b` VARCHAR(64) CHARACTER SET utf8 NOT NULL -- apellido(s), nombre(s)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
//
DELIMITER ;

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