-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp0004`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp0004` ( -- agregarProfesor
	IN `@a` CHAR(5) CHARACTER SET utf8,
	IN `@b` VARCHAR(64) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	INSERT INTO `de` VALUES (`@a`, `@b`);
COMMIT;
END;
$$
DELIMITER ;
