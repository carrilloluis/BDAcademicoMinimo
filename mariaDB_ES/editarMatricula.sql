-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp2345a`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp2345a` ( -- spEditarCursoEnMatricula
	IN `@a` SMALLINT UNSIGNED,
	IN `@b` CHAR(6) CHARACTER SET utf8,
	IN `@c` CHAR(6) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `cd` SET `b`=`@c` WHERE `a` = `@a` AND `b` = `@b`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp2345a`(1, 'ABCDEF', 'xyz123');

