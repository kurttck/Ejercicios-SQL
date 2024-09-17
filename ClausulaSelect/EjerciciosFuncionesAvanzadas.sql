/* ✏️Ejercicios Función MAX() 
Encuentra el salario máximo de todos los empleados. */

select max(salario) from empleados

/* Encuentra la cantidad máxima de productos vendidos en una sola venta. */

select max(cantidad) from ventas

/* Encuentra la edad máxima de los empleados. */

select max(edad) from empleados


/* -------------------------------------------------------------------------------------------------------- */


/* ✏️Ejercicios Función MIN()
Encuentra el salario mínimo de todos los empleados. */

select min(salario) from empleados

/* Encuentra la cantidad mínima de productos vendidos en una sola venta. */

select min(cantidad) from ventas

/* Encuentra la edad mínima de los empleados. */

select min(edad) from empleados


/* --------------------------------------------------------------------------------------------------------------- */

/* ✏️Ejercicios de la Función COUNT()
Cuenta cuántos empleados hay en total. */

select count(*) from clientes

/* Cuenta cuántas ventas se han realizado. */

select count(*) from ventas

/* Cuenta cuántos productos tienen un precio superior a $500. */


select count(*) from productos where precio > 500

/* ---------------------------------------------------------------------------------------------------- */

/* ✏️Ejercicios de la Función SUM()
Calcula la suma total de salarios de todos los empleados. */

select sum(salario) from empleados

/* Calcula la suma total de montos vendidos en todas las ventas. */

select sum(monto_total) from ventas

/* Calcula la suma de precios de productos con ID par. */

select sum(precio) from productos where id % 2 = 0


/* 
----------------------------------------------------------------------------------------------------------- */

/* ✏️Ejercicios Función AVG()
Calcula el salario promedio de todos los empleados. */

select avg(salario) from empleados

/* Calcula el precio unitario promedio de todos los productos. */

select avg(precio) from productos


/* Calcula la edad promedio de los empleados. */

select avg(edad) from empleados


/* ----------------------------------------------------------------------------------------------------- */


/* ✏️Ejercicios GROUP BY()
Agrupa las ventas por empleado y muestra la cantidad total de ventas realizadas por cada empleado. */

select empleado_id, count(*) from ventas GROUP by empleado_id 

select * from ventas

/* Agrupa los productos por precio y muestra la cantidad de productos con el mismo precio. */

select precio, count(*) as cantidad_total from productos GROUP BY precio 

/* Agrupa los empleados por departamento y muestra la cantidad de empleados en cada departamento. */

select departamento_id, count(*) from empleados GROUP BY departamento_id

select * from empleados

/* --------------------------------------------------------------------------------------------------------- */

/* ✏️Ejercicios HAVING 
Encuentra los departamentos con un salario promedio de sus empleados superior a $3,000. */

select departamento_id, avg(salario) from empleados GROUP BY departamento_id HAVING avg(salario) > 3000

/* Encuentra los productos que se han vendido al menos 5 veces. */

select producto_id, sum(cantidad) as cant from ventas GROUP BY producto_id having cant >= 5

select * from ventas

/* Selecciona los empleados que tengan una “o” en su nombre o apellido y agrúpalos por departamento
 y muestra los que tengan el salario máximo. */

select departamento_id, max(salario) from empleados where nombre like '%o%' or apellido like '%o%' GROUP BY departamento_id

--NO SE COMO USAR EL HAVING AQUI JAJA

