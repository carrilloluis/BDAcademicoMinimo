-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp0003`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp0003` ( -- agregarMatrícula
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
