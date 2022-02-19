-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- Uso		$> sqlite3 academicoMinimo.db < profesor.sql
-- ---------------------------------------------------------------------

DROP TABLE IF EXISTS [de];
CREATE TABLE IF NOT EXISTS [de] ( -- tutor/profesor/docente/maestro
	[a] CHAR(5) NOT NULL, -- ID del tutor [PK]
	[b] VARCHAR(64) NOT NULL, -- apellido(s), nombre(s)
	PRIMARY KEY([a])
) WITHOUT RowID;