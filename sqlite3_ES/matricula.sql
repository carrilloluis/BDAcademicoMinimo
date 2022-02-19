-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- Uso		$> sqlite3 academicoMinimo.db < matricula.sql
-- ---------------------------------------------------------------------

DROP TABLE IF EXISTS [cd];
CREATE TABLE IF NOT EXISTS [cd] ( -- matricula/inscripción
	[a] INTEGER NOT NULL, -- ID del estudiante/código [FK]
	[b] CHAR(6) NOT NULL, -- código del curso [FK]
	FOREIGN KEY ([a]) REFERENCES ab(a),
	FOREIGN KEY ([b]) REFERENCES bc(a),
	UNIQUE ([a], [b])
);