-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2018/01/09
-- ---------------------------------------------------------------------

DROP PROCEDURE IF EXISTS `sp5678a`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp5678a` ( -- spEditarNombreCurso
	IN `@a` CHAR(6) CHARACTER SET utf8,
	IN `@b` VARCHAR(64) CHARACTER SET utf8
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `bc` SET `b`=`@b` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp5678a`('abcdef', 'Algebra Avanzada');

DROP PROCEDURE IF EXISTS `sp5678b`;
DELIMITER $$
CREATE PROCEDURE IF NOT EXISTS `sp5678b` ( -- spEditarCreditajeCurso
	IN `@a` CHAR(6) CHARACTER SET utf8,
	IN `@c` TINYINT(1) UNSIGNED
) BEGIN
DECLARE EXIT HANDLER FOR SQLEXCEPTION ROLLBACK;
START TRANSACTION;
	UPDATE `bc` SET `c`=`@c` WHERE `a` = `@a`;
COMMIT;
END;
$$
DELIMITER ;
-- CALL `sp5678b`('ABCDEF', 1);