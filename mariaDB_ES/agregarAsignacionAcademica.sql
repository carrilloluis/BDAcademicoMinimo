-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp0005`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp0005` ( -- agregarAsignaciónAcadémica
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
