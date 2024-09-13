/*
Lenguaje DML
El lenguaje DML (Data Manipulation Language) es un conjunto de instrucciones que se utilizan
para manipular los datos almacenados en la base de datos. Esto incluye la inserción, actualización
y eliminación de registros en tablas. Ejemplos de instrucciones DML
incluye INSERT INTO, UPDATE, DELETE, SELECT, entre otras. 

1. Instrucción INSERT INTO (Inserción de Datos): La instrucción INSERT INTO se
 utiliza para agregar nuevos registros o filas a una tabla existente en la base de datos.  */

 INSERT INTO empleados(nombre, apellido, edad, salario) VALUES ('Juan', 'Perez', 30, 2500.50);
/* 
 2. Instrucción UPDATE (Actualización de Datos):La instrucción UPDATE se utiliza para modificar
  los valores de uno o más registros en una tabla existente. Las cláusulas clave asociadas con esta instrucción son: */

  UPDATE empleados SET salario=2700.00 WHERE nombre = 'Juan';
/* 
3. Instrucción DELETE (Eliminación de Datos): La instrucción DELETE
 se utiliza para eliminar registros de una tabla existente. Las cláusulas clave son: */

 DELETE FROM empleados where nombre = 'Juan';
/* 
 4. Instrucción SELECT (Consulta de Datos): La instrucción SELECT es esencial para recuperar
  y poder visualizar datos de una o varias tablas en una base de datos. Las cláusulas clave incluyen: */

  SELECT nombre, salario FROM empleados WHERE edad > 25;

