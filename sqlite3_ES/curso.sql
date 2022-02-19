-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- Uso		$> sqlite3 academicoMinimo.db < curso.sql
-- ---------------------------------------------------------------------

DROP TABLE IF EXISTS [bc];
CREATE TABLE IF NOT EXISTS [bc] ( -- curso/asignatura/materia
	[a] CHAR(6) NOT NULL, -- código/identidicador/númeroCurso
	[b] VARCHAR(64) NOT NULL, -- nombre de la asignatura
	[c] INTEGER NOT NULL DEFAULT 4, -- creditaje
	PRIMARY KEY([a])
) WITHOUT RowID;