-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- Uso		$> sqlite3 academicoMinimo.db < asignacionAcademica.sql
-- ---------------------------------------------------------------------

DROP TABLE IF EXISTS [ef];
CREATE TABLE IF NOT EXISTS [ef] ( -- carga académica/asignación académica/responsabilidad
	[a] CHAR(5) NOT NULL, -- id [FK]
	[b] CHAR(6) NOT NULL, -- id del curso [FK]
	FOREIGN KEY ([a]) REFERENCES de(a),
	FOREIGN KEY ([b]) REFERENCES bc(a),
	UNIQUE ([a], [b])
);