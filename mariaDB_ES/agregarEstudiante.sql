-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp0001`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp0001` ( -- agregarEstudiante
	IN `@nm` VARCHAR(64) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	INSERT INTO `ab` VALUES (NULL, `@nm`);
	-- SET @tmp = LAST_INSERT_ID();
COMMIT;
END;
$$
DELIMITER ;
