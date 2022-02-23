-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `spAddIntoBC`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `spAddIntoBC` ( -- agregarCurso
	IN `@a` CHAR(6) CHARACTER SET utf8,
	IN `@b` VARCHAR(64) CHARACTER SET utf8,
	IN `@c` TINYINT(1) UNSIGNED
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	INSERT INTO `bc` VALUES (`@a`, `@b`, `@c`);
COMMIT;
END;
$$
DELIMITER ;