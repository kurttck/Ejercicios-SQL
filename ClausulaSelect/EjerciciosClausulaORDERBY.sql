/* ✏️Ejercicios cláusula ORDER BY:
Ordena los empleados por salario de manera ascendente. */

select * from empleados ORDER BY salario asc

/* Ordena los productos por nombre de manera descendente. */

select * from productos order by nombre desc

/* Ordena las ventas por cantidad de manera ascendente y luego por precio_unitario de manera descendente. */

select * from ventas order by cantidad asc, precio_unitario desc