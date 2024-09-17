/* ✏️Ejercicios CASE
Crea una consulta que muestre el nombre de los productos y los categorice como "Caro"
 si el precio es mayor o igual a $500, "Medio" si es mayor o igual a $200 y menor que 
 $500, y "Barato" en otros casos. */

 SELECT nombre, CASE when precio >= 500 then "Caro" when precio >= 200 and precio < 500 then "Medio"
  else "Barato" end as categoria from productos

/* Crea una consulta que muestre el nombre de los empleados y los categorice como "Joven"
 si tienen menos de 30 años, "Adulto" si tienen entre 30 y 40 años, y "Mayor" si tienen más de 40 años. */

 SELECT nombre, case when edad < 30 then "Joven" when edad >=30 and edad < 40 then "Adulto" else "Mayor" END as categoria
 from empleados

/* Crea una consulta que muestre el ID de la venta y los categorice como "Poca cantidad"
 si la cantidad es menor que 3, "Cantidad moderada" si es igual o mayor que 3 y menor
  que 6, y "Mucha cantidad" en otros casos. */

select id, case when cantidad < 3 then "Poca cantidad" when cantidad >=3 and cantidad < 6 then "Cantidad Moderada" else "Mucha Cantidad" end as categoria
from ventas

/* Crea una consulta que muestre el nombre de los clientes y los categorice como "Comienza
 con A" si su nombre comienza con la letra 'A', "Comienza con M" si comienza con 'M' y 
 "Otros" en otros casos. */

select nombre, CASE when nombre like 'A%' then "Comienza con A" when nombre like "M%" then "comienza con M" else "Otros" end as categoria
from clientes

/* Crea una consulta que muestre el nombre de los empleados y los categorice como "Salario
 alto" si el salario es mayor o igual a $3500, "Salario medio" si es mayor o igual a $3000
  y menor que $3500, y "Salario bajo" en otros casos. */

select nombre, case when salario >= 3500 then "Salario Alto" when salario >=3000 and salario <3500 then "Salario medio"
else "Salario bajo" end as categoria from empleados