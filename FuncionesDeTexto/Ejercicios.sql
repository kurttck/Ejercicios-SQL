/* ✏️Ejercicios funciones de texto
Crea una tabla llamada "estudiantes" con cinco columnas: "id" de tipo INT como clave primaria, "nombre" de tipo VARCHAR(50), "apellido" de tipo VARCHAR(50), "edad" de tipo INT y "promedio" de tipo FLOAT. Luego, inserta cinco filas en la tabla "estudiantes" con los siguientes datos:
 */
/* ID: 1, Nombre: Juan, Apellido: Pérez, Edad: 22, Promedio: 85.5

ID: 2, Nombre: María, Apellido: Gómez, Edad: 21, Promedio: 90.0

ID: 3, Nombre: Luis, Apellido: Rodríguez, Edad: 20, Promedio: 88.5

ID: 4, Nombre: Ana, Apellido: Martínez, Edad: 23, Promedio: 92.0

ID: 5, Nombre: Carlos, Apellido: López, Edad: 22, Promedio: 86.5 */

CREATE TABLE estudiantes(
    id INT PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    edad INT,
    promedio FLOAT
)

INSERT INTO estudiantes(id, nombre, apellido, edad, promedio)
VALUES(1, 'Juan', 'Pérez', 22, 85.5),
(2, 'Mariá', 'Gómez', 21, 90.0),
(3, 'Luis', 'Rodríguez', 20, 88.5),
(4, 'Ana', 'Martínez', 23, 92.0),
(5, 'Carlos', 'Lopez', 22, 86.5)

/* Encuentra la longitud del nombre del estudiante con el nombre "Luis" y apellido "Rodríguez". */

select length(nombre) from estudiantes where nombre = 'Luis' and apellido = 'Rodriguez'

/* Concatena el nombre y el apellido del estudiante con el nombre "María" y apellido "Gómez" con un espacio en el medio.  */

select concat(nombre, ' ', apellido) from estudiantes where nombre = 'Maria' and apellido = 'Gomez'

/* Encuentra la posición de la primera 'e' en el apellido del estudiante con el nombre "Juan" y apellido "Pérez". */

select locate('e', apellido) from estudiantes where nombre = 'Juan' and apellido = 'Pérez'

/* Inserta la cadena ' García' en la posición 3 del nombre del estudiante con el nombre "Ana" y apellido "Martínez". */

select insert('Ana', 3, 0, 'Gómez')from estudiantes where nombre = 'Ana' and apellido = 'Martínez'

/* Convierte el nombre del estudiante con el nombre "Luis" y apellido "Rodríguez" a minúsculas. (LOWER) */

select lower(nombre) from estudiantes where nombre = 'Luis' and apellido = 'Rodriguez'

/* Convierte el apellido del estudiante con el nombre "Juan" y apellido "Pérez" a mayúsculas. (UPPER) */

select UPPER(apellido) from estudiantes where nombre = 'Juan' and apellido = 'Pérez'

/* Obtiene los primeros 4 caracteres del apellido del estudiante con el nombre "María" y apellido "Gómez". (LEFT) */

select LEFT(apellido, 4) from estudiantes where nombre = 'Maria' and apellido = 'Gómez'

/* Obtiene los últimos 3 caracteres del apellido del estudiante con el nombre "Ana" y apellido "Martínez". (RIGHT) */

select RIGHT(apellido, 3) from estudiantes where nombre = 'Ana' and apellido = 'Martínez'

/* Encuentra la posición de la primera 'o' en el nombre del estudiante con el nombre "Carlos" y apellido "López". (LOCATE) */

select locate('o', nombre) from estudiantes where nombre = 'Carlos' and apellido = 'Lopez'

/* Encuentra la posición de la primera aparición de la letra 'a' en el nombre de la estudiante con el
 nombre "María" y apellido "Gómez". */

select locate('a', nombre) from estudiantes where nombre = 'Maria' and apellido = 'Gómez'

/* Reemplaza 'a' con 'X' en el nombre del estudiante con el nombre "Ana" y apellido "Martínez".*/

select replace('Ana', 'a', 'X') from estudiantes where nombre = 'Ana' and apellido = 'Martínez'

/* Encuentra la subcadena de 3 caracteres de longitud de la columna 'nombre' del estudiante con el nombre
 "María" y apellido "Gómez", comenzando en la posición 2. */

select substr(nombre, 2, 3) from estudiantes where nombre = 'Maria' and apellido = 'Gómez'

/* Combina los nombres de todos los estudiantes en una única cadena separada por guiones. */

select concat_ws('-', nombre, apellido) from estudiantes

/* Combina los nombres y apellidos de todos los estudiantes en una única cadena separada por un guion vertical (|). */ 

select concat_ws('|', nombre, apellido) from estudiantes

/* Elimina los espacios en blanco iniciales del texto "    … usé muchos espacios    ". */

select trim(leading ' ' from '    … usé muchos espacios    ')

/* Elimina los espacios en blanco finales del texto "    … usé muchos espacios    ". */

select trim(trailing ' ' from '    … usé muchos espacios    ')

/* Cita el resultado de los dos ejercicios anteriores utilizando la función QUOTE. */

select quote('    … usé muchos espacios    ')