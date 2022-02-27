-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp3456`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp3456` ( -- spEditarCursoDelDocente
	IN `@a` CHAR(5) CHARACTER SET utf8,
	IN `@b` CHAR(6) CHARACTER SET utf8,
	IN `@c` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `ef` SET `b`=`@c` WHERE `a` = `@a` AND `b` = `@b`;
COMMIT;
END;
$$
DELIMITER ;