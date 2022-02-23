-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `spAddIntoEF`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `spAddIntoEF` ( -- agregarAsignaciónAcadémica
	IN `@a` CHAR(5) CHARACTER SET utf8,
	IN `@b` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	INSERT INTO `ef` VALUES (`@a`, `@b`);
COMMIT;
END;
$$
DELIMITER ;