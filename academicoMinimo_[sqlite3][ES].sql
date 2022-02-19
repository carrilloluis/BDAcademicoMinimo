-- ---------------------------------------------------------------------
-- Autor	Luis Carrillo Gutiérrez
-- Creado	2017/11/20
-- ---------------------------------------------------------------------

PRAGMA foreign_keys = ON;
DROP TABLE IF EXISTS [ab];
CREATE TABLE IF NOT EXISTS [ab] ( -- estudiante/aprendiz/tutelado
	[a] INTEGER NOT NULL, -- id [PK]
	[b] VARCHAR(64) NOT NULL, -- apellido(s), nombre(s)
	PRIMARY KEY([a])
);

DROP TABLE IF EXISTS [bc];
CREATE TABLE IF NOT EXISTS [bc] ( -- curso/asignatura/materia
	[a] CHAR(6) NOT NULL, -- código/identidicador/númeroCurso
	[b] VARCHAR(64) NOT NULL, -- nombre de la asignatura
	[c] INTEGER NOT NULL DEFAULT 4, -- creditaje
	PRIMARY KEY([a])
) WITHOUT RowID;

DROP TABLE IF EXISTS [cd];
CREATE TABLE IF NOT EXISTS [cd] ( -- matricula/inscripción
	[a] INTEGER NOT NULL, -- ID del estudiante/código [FK]
	[b] CHAR(6) NOT NULL, -- código del curso [FK]
	FOREIGN KEY ([a]) REFERENCES ab(a),
	FOREIGN KEY ([b]) REFERENCES bc(a),
	UNIQUE ([a], [b])
);

DROP TABLE IF EXISTS [de];
CREATE TABLE IF NOT EXISTS [de] ( -- tutor/profesor/docente/maestro
	[a] CHAR(5) NOT NULL, -- ID del tutor [PK]
	[b] VARCHAR(64) NOT NULL, -- apellido(s), nombre(s)
	PRIMARY KEY([a])
) WITHOUT RowID;

DROP TABLE IF EXISTS [ef];
CREATE TABLE IF NOT EXISTS [ef] ( -- carga académica/asignación académica/responsabilidad
	[a] CHAR(5) NOT NULL, -- id [FK]
	[b] CHAR(6) NOT NULL, -- id del curso [FK]
	FOREIGN KEY ([a]) REFERENCES de(a),
	FOREIGN KEY ([b]) REFERENCES bc(a),
	UNIQUE ([a], [b])
);