/* ✏️Ejercicios funciones de texto
Repite el nombre y apellido del estudiante con el nombre "Juan" y apellido "Pérez" tres veces.  */

SELECT REPEAT(CONCAT_WS(' ', nombre, apellido), 3) FROM estudiantes WHERE nombre = 'Juan' AND apellido = 'Pérez'

/* Invierte el nombre del estudiante con el nombre "Ana" y apellido "Martínez".  */

SELECT REVERSE(CONCAT_WS(' ', nombre, apellido)) FROM estudiantes WHERE nombre = 'Ana' AND apellido = 'Martínez'

/* Devuelve una cadena que contenga 8 caracteres de espacio usando la función SPACE y muéstrala con la función QUOTE. */

select quote(space(8))

/* Extrae una subcadena que contiene el nombre del estudiante con el nombre "María" y apellido 
"Gómez" antes de la segunda a utilizando SUBSTRING_INDEX. */

SELECT SUBSTRING_INDEX(CONCAT_WS(' ', nombre, apellido), ' ', 2) FROM estudiantes WHERE nombre = 'Maria' AND apellido = 'Gómez'

/* Combina las edades de todos los estudiantes en una única cadena separada por comas y orden descendente. */

SELECT GROUP_CONCAT(edad ORDER BY edad DESC) FROM estudiantes

/* Elimina las ‘a’ del nombre' del estudiante con el nombre "Ana" y apellido "Martínez" usando la función REPLACE.  */

SELECT REPLACE(CONCAT_WS(' ', nombre, apellido), 'a', '') FROM estudiantes WHERE nombre = 'Ana' AND apellido = 'Martínez'

/* Rellena a la derecha el promedio del estudiante con el nombre "Luis" y apellido "Rodríguez" 
con asteriscos hasta una longitud total de 10 caracteres.  */

select lpad(promedio, 10, '*') from estudiantes where nombre = 'Luis' and apellido = 'Rodriguez'

/* Obtén el promedio del estudiante con nombre 'Carlos' y apellido 'López', formateado con dos 
decimales y utilizando la configuración regional 'es_AR'. */

select format(promedio, 2, 'es_AR') from estudiantes where nombre = 'Carlos' and apellido = 'Lopez'