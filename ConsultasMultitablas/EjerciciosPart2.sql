/* ✏️Ejercicios consultas multitabla - Parte 2 
Calcular el monto total de ventas por departamento y mostrar
el nombre del departamento junto con el monto total de ventas. */

select sum(monto_total), d.nombre 
from ventas as v, empleados as e, departamentos as d
where v.empleado_id=e.id and e.departamento_id = d.id
GROUP BY d.id

/* Encontrar el empleado más joven de cada departamento y mostrar 
el nombre del departamento junto con la edad del empleado más joven. */

select min(edad), d.nombre
from empleados as e, departamentos as d
where e.departamento_id = d.id
GROUP BY d.id

/* Calcular el volumen de productos vendidos por cada producto
(por ejemplo, menos de 5 “bajo”, menos 8 “medio” y mayor o igual a 8 “alto”)
y mostrar la categoría de volumen junto con la cantidad y el nombre del producto. */

select case when count(v.cantidad) < 5 then 'bajo' when count(v.cantidad) < 8 then 'medio' else 'alto' end, count(v.cantidad),p.nombre 
from ventas as v, productos as p
where v.producto_id = p.id
GROUP by p.id

select * from ventas
/* Encontrar el cliente que ha realizado el mayor monto total de compras
y mostrar su nombre y el monto total. */

select c.nombre, sum(monto_total) as monto
from ventas as v, clientes as c
where v.cliente_id = c.id
GROUP by c.id order by monto desc

/* Calcular el precio promedio de los productos vendidos por cada empleado
y mostrar el nombre del empleado junto con el precio promedio de los productos que ha vendido. */

select avg(precio_unitario), e.nombre
from ventas as v, empleados as e
where v.empleado_id = e.id
GROUP by e.id

/* Encontrar el departamento con el salario mínimo más bajo entre los
empleados y mostrar el nombre del departamento junto con el salario mínimo más bajo. */

select min(salario), d.nombre
from empleados as e, departamentos as d
where e.departamento_id = d.id
GROUP by d.id

/* Encuentra el departamento con el salario promedio más alto entre los
empleados mayores de 30 años y muestra el nombre del departamento junto
con el salario promedio. Limita los resultados a mostrar solo los departamentos
con el salario promedio mayor a 3320. */

select avg(salario), d.nombre
from empleados as e, departamentos as d
where e.departamento_id = d.id and e.edad > 30
GROUP by d.id
having avg(salario) > 3320