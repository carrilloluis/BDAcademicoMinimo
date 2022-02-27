-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp6789`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp6789` ( -- spEditarApellidoNombreProfesor
	IN `@a` CHAR(5) CHARACTER SET utf8,
	IN `@b` VARCHAR(64) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `de` SET `b`=`@b` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp6789`('ABCDE', 'Profesor 2');