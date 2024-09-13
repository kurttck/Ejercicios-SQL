/*  Inserta una venta en la tabla "ventas" donde el cliente "Juan Pérez" compra una "Laptop"
 con una cantidad de 2 y el vendedor tiene el nombre "Ana" y apellido "Rodríguez". */

insert into ventas(producto_id, cliente_id, cantidad, precio_unitario, empleado_id)
values (1, 1, 2, 1350.00, 2)

/* Inserta una venta en la tabla "ventas" donde el cliente "María García" compra un "Teléfono móvil"
 con una cantidad de 3 y el vendedor tiene el nombre "Carlos" y apellido "López". */

 insert into ventas(producto_id, cliente_id, cantidad, precio_unitario, empleado_id)
 values(2, 2,3,480.00, 3)

/* Crea una venta en la tabla "ventas" donde el cliente "Carlos Sánchez" compra una
 "Impresora" con una cantidad de 1 y el vendedor tiene el nombre "Marta" y apellido "Ramírez". */

  insert into ventas(producto_id, cliente_id, cantidad, precio_unitario, empleado_id)
  values(4,4,1,280.00,7)

/* Inserta una venta en la tabla "ventas" donde el cliente "Ana López"
 compra una "Laptop" con una cantidad de 1 y el vendedor tiene el nombre "Carlos" y apellido "López". */

   insert into ventas(producto_id, cliente_id, cantidad, precio_unitario, empleado_id)
   values(1,3,1,1350.00,3)

/* Crea una venta en la tabla "ventas" donde el cliente "Juan Pérez" compra una "Tablet" con una
 cantidad de 2 y el vendedor tiene el nombre "Luis" y apellido "Fernández". */

 insert into ventas(producto_id, cliente_id, cantidad,precio_unitario, empleado_id)
 values(3,1,2,350.00,6)

/*  Inserta una venta en la tabla "ventas" donde el cliente "María García" compra un
 "Teléfono móvil" con una cantidad de 1 y el vendedor tiene el nombre "Marta" y apellido "Ramírez". */

 insert into ventas(producto_id, cliente_id, cantidad,precio_unitario, empleado_id)
 values(
    (select id from productos where nombre = 'Telefono Movil'),
    (select id from clientes where nombre = "Maria Guzman"),
    1,
    (select precio from productos where nombre = 'Telefono Movil'),
    (select id from empleados where nombre = 'Marta' and apellido = 'Ramirez')
 )


/* Crea una venta en la tabla "ventas" donde el cliente "Carlos Sánchez" 
compra una "Impresora" con una cantidad de 2 y el vendedor tiene el nombre "Lorena" y apellido "Guzmán". */

insert into ventas(producto_id, cliente_id, cantidad,precio_unitario, empleado_id)
values(
    (select id from productos where nombre="Impresora"),
    (select id from clientes where nombre="Carlos Sanchez"),
    2,
    (select precio from productos where nombre="Impresora"),
    (select id from empleados where nombre="Lorena" and apellido="Guzman")
)



/* Haz una consulta simple de los datos de la tabla ventas y verifica que se presente de la siguiente manera: */

select * from ventas