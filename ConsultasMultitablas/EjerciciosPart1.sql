 /* ✏️Ejercicios consultas multitabla  - Parte 1
Une las tablas de empleados con departamentos y solo muestra las columnas nombre, apellido, edad,
 salario de empleados y la columna nombre de departamentos. */

select e.nombre, apellido, edad, salario, d.nombre from empleados as e, departamentos as d

/* Une las tablas ventas con la tabla empleados donde se muestren todas las columnas de ventas exceptuando
 la columna empleado_id y en su lugar muestres el nombre y apellido de la tabla empleados. */

select v.id,v.producto_id, v.cliente_id, v.cantidad, v.precio_unitario,v.monto_total, 
concat(e.nombre, ' ', apellido) as empleado  from ventas as v, empleados as e
where v.empleado_id = e.id


/* Une las tablas ventas con la tabla productos donde se muestren todas las columnas de ventas exceptuando
 la columna producto_id y en su lugar muestres la columna nombre de la tabla productos. */

select v.id, p.nombre as producto, v.cliente_id, v.cantidad, v.precio_unitario,v.monto_total, v.empleado_id
from ventas as v, productos as p
where p.id = v.producto_id

/* Une las tablas ventas con la tabla clientes donde se muestren todas las columnas de ventas exceptuando
 la columna cliente_id y en su lugar muestres la columna nombre de la tabla clientes. */

 select v.id, v.producto_id, c.nombre as cliente, v.cantidad, v.precio_unitario,v.monto_total, v.empleado_id
 from ventas as v, clientes as c
 where c.id =  v.cliente_id

/* Une las tablas ventas con la tablas empleados y departamentos donde se muestren todas las columnas
 de ventas exceptuando la columna empleado_id y en su lugar muestres el nombre y apellido de la tabla
  empleados y además muestres la columna nombre de la tabla departamentos. */

select v.id, v.producto_id, v.cliente_id, v.cantidad, v.precio_unitario,v.monto_total, concat(e.nombre, ' ', e.apellido) as Empleado, d.nombre
from ventas as v, empleados as e, departamentos as d
where v.empleado_id=e.id and e.departamento_id = d.id

/* Une las tablas ventas, empleados, productos y clientes donde se muestren las columnas de la tabla 
ventas reemplazando sus columnas de FOREIGN KEYs con las respectivas columnas de “nombre” de las otras tablas. */

select v.id, p.nombre, c.nombre, v.cantidad, v.precio_unitario,v.monto_total, e.nombre
from ventas as v, empleados as e, productos as p, clientes as c
where v.producto_id=p.id and v.cliente_id=c.id and v.empleado_id=e.id

/* Calcular el salario máximo de los empleados en cada departamento y mostrar el nombre del departamento
 junto con el salario máximo. */

select d.nombre, max(e.salario)
from empleados as e, departamentos as d
where e.departamento_id = d.id
group by d.id