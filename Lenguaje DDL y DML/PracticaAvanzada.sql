/* 
✏️ Actividad : Práctica avanzada  */

/* Crea una tabla llamada "clientes" con columnas para el "id" (entero autoincremental), "nombre" 
(cadena de hasta 50 caracteres), y "direccion" (cadena de hasta 100 caracteres) */

CREATE table clientes(
    id int primary key auto_increment,
    nombre varchar(50),
    direccion varchar(100)
)

/* Crea una tabla llamada "productos" con columnas para el "id" (entero autoincremental), "nombre" 
(cadena de hasta 50 caracteres), y "precio" (decimal con 10 dígitos, 2 decimales). */

create table productos(
    id int primary key auto_increment,
    nombre varchar(50),
    precio decimal(10,2)
)

/* Crea una tabla llamada "ventas" con columnas para "id" (entero autoincremental), "producto_id" (entero),
 "cliente_id" (entero), "cantidad" (entero), “precio_unitario” (decimal con 10 dígitos, 2 decimales),
  "monto_total" (decimal con 10 dígitos, 2 decimales), y "empleado_id" (entero). */

  create table ventas(
    id int primary key auto_increment,
    producto_id int,
    cliente_id int,
    cantidad int,
    precio_unitario decimal(10,2),
    monto_total decimal(10,2),
    empleado_id int
  )

/*   Inserta un nuevo cliente en la tabla "clientes" con el nombre "Juan Pérez" y la dirección "Libertad 3215, Mar del Plata" */


insert into clientes(nombre, direccion) values('Juan Perez', 'Libertad 3215, Mar del Plata')

/* Inserta un nuevo producto en la tabla "productos" con el nombre "Laptop" y un precio de 1200.00 . */

insert into productos(nombre, precio) values('Laptop', 1200.00)

/* Modifica la columna monto_total de la tabla ventas para que por defecto sea el resultado de multiplicar
 la cantidad por el precio del producto_id */


ALTER TABLE ventas
MODIFY COLUMN monto_total decimal(10,2) default (cantidad * precio_unitario)


describe ventas

/* Crea una venta en la tabla "ventas" donde el cliente "Juan Pérez" compra "Laptop"
 por una cantidad de 2 unidades y el vendedor tenga el nombre “Ana" y apellido "Rodriguez”.
  Ten en cuenta que debes “tener” los ID y valores correspondientes previamente, luego aprenderemos
   a recuperarlos con subconsultas. */

insert into ventas(cliente_id, producto_id, cantidad, precio_unitario, empleado_id)
values(1, 1, 2,1200.00,2)

select * from empleados

/* 9. Haz una consulta simple de los datos de la tabla ventas y verifica que se presente de la siguiente manera: */

select * from ventas