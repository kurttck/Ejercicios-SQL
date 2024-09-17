/* ✏️Ejercicios AS
Crea una consulta que muestre el salario de los empleados junto 
con el salario aumentado en un 10% nombrando a la columna como “Aumento del 10%”. */


select salario, (salario*0.1+salario) as "Aumento del 10%" from empleados 

/* Crea una consulta que calcule el monto total de las compras realizadas por cliente 
y que la columna se llame “Monto total gastado”. */

select sum(cantidad*precio_unitario) as "Monto total gastado" from ventas

/* Muestra los nombres completos de los empleados concatenando los campos "nombre"
 y "apellido" y que la columna se llame “Nombre y apellido”. */

 select concat(nombre, ' ', apellido) as "Nombre y apellido" from empleados
