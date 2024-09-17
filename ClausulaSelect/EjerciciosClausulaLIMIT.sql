/* ✏️Ejercicios LIMIT
Muestra los 5 productos más caros de la tabla "productos". */

select * from productos ORDER BY precio desc LIMIT 5;

/* Muestra los 10 primeros empleados en orden alfabético por apellido. */

select * from empleados ORDER BY apellido asc limit 10;

/* Muestra las 3 ventas con el monto total más alto. */

select * from ventas ORDER BY monto_total desc limit 3

