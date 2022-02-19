-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- Uso		$> sqlite3 academicoMinimo.db < estudiante.sql
-- ---------------------------------------------------------------------

PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS [ab];
CREATE TABLE IF NOT EXISTS [ab] ( -- estudiante/aprendiz/tutelado
	[a] INTEGER NOT NULL, -- id [PK]
	[b] VARCHAR(64) NOT NULL, -- apellido(s), nombre(s)
	PRIMARY KEY([a])
);