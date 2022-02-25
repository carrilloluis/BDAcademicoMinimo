-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp1234`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp1234` ( -- spEditarNombreApellidoEstudiante
	IN `@a` SMALLINT UNSIGNED,
	IN `@b` VARCHAR(64) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `ab` SET `b` = `@b` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;