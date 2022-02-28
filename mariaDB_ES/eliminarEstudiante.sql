-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp9001`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp9001` ( -- spEliminarEstudiante
	IN `@a` SMALLINT UNSIGNED
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	DELETE * FROM `ab` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;