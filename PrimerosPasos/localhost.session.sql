
ALTER TABLE empleados
ADD fecha_contratacion DATE DEFAULT CURRENT_DATE;


ALTER TABLE empleados
ADD fecha_contratacion DATETIME DEFAULT NOW();

/* Crea una nueva tabla llamada "departamentos" con las siguientes columnas:
id (clave primaria, tipo INT AUTO_INCREMENT)
nombre (tipo VARCHAR(50)) */


CREATE TABLE departamentos(
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
)

/* 8. Agrega una nueva columna llamada "departamento_id" en la tabla "empleados"
 que servirá como clave foránea para hacer referencia al departamento al que pertenece cada empleado. */

 ALTER TABLE empleados
 ADD COLUMN departamento_id INT,

/* 
 9. Modifica la tabla “empleados” y establece una restricción de clave 
 foránea en la columna "departamento_id" para que haga referencia a la columna "id" en la tabla "departamentos". */

ALTER TABLE empleados
ADD CONSTRAINT fk_departamento
FOREIGN KEY(departamento_id) REFERENCES departamentos(id)

/* 
10. Elimina el campo “departamentos” de la tabla empleados, ahora usaremos la clave foránea para poder relacionar ambas tablas */

ALTER TABLE empleados
DROP COLUMN departamento


