# Uso y orden de los guiones (scripts) SQL.

Para crear las tablas se sugiere el siguiente orden de ejecución :

~~~
[Your account]$> sqlite3 /tmp/academicoMinimo.db < estudiante.sql
[Your account]$> sqlite3 /tmp/academicoMinimo.db < curso.sql
[Your account]$> sqlite3 /tmp/academicoMinimo.db < matricula.sql
[Your account]$> sqlite3 /tmp/academicoMinimo.db < profesor.sql
[Your account]$> sqlite3 /tmp/academicoMinimo.db < asignacionAcademica.sql
~~~
