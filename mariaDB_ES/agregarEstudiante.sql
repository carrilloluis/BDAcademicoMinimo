-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `spAddIntoAB`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `spAddIntoAB` ( -- agregarEstudiante
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