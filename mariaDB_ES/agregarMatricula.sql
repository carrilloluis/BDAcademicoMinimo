-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `spAddIntoCD`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `spAddIntoCD` ( -- agregarMatrícula
	IN `@a` SMALLINT(1) UNSIGNED,
	IN `@b` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	INSERT INTO `cd` VALUES (`@a`, `@b`);
COMMIT;
END;
$$
DELIMITER ;