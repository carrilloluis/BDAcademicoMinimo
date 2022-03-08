-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp9003`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp9003` ( -- spEliminarMatrícula
	IN `@a` SMALLINT UNSIGNED,
	IN `@b` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	DELETE FROM `cd` WHERE `a` = `@a` AND `a` = `@b`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp9003`('abcdef');