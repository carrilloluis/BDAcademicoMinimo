-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp9002`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp9002` ( -- spEliminarCurso
	IN `@a` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	DELETE FROM `bc` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp9002`('abcdef');