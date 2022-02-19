# Uso y orden de los guiones (scripts) SQL.

Para crear las tablas se sugiere el siguiente orden de ejecución :

~~~
[Your account]$> mysql -h localhost:3306 -u adminDB -p academicoMinimo < estudiante.sql
[Your account]$> mysql -h localhost:3306 -u adminDB -p academicoMinimo < curso.sql
[Your account]$> mysql -h localhost:3306 -u adminDB -p academicoMinimo < matricula.sql
[Your account]$> mysql -h localhost:3306 -u adminDB -p academicoMinimo < profesor.sql
[Your account]$> mysql -h localhost:3306 -u adminDB -p academicoMinimo < asignacionAcademica.sql
~~~