/* ✏️Ejercicios DML */

/* Inserta un nuevo producto en la tabla "productos" con el nombre "Teléfono móvil" y un precio de 450.00. */

insert into productos(nombre, precio) values('Telefono Movil', 450.00)

/* Inserta un nuevo cliente en la tabla "clientes" con el nombre "María García" y la dirección "Constitución 456, Luján". */

insert into clientes(nombre, direccion) values('Maria Guzman', 'Constitución 456, Lujan')

/* Modifica la columna correo_electronico de la tabla empleados para que se genere automáticamente concatenado
 el nombre, apellido y el string “@mail.com”. */

alter table empleados
MODIFY COLUMN correo_electronico varchar(100) GENERATED ALWAYS AS (concat(nombre, apellido, '@mail.com')) STORED;

/* Inserta un nuevo empleado en la tabla "empleados" con el nombre "Luis” y apellido “Fernández",
 edad 28, salario 2800.00 y que pertenezca al departamento “ventas”. */

 insert into empleados (nombre, apellido, edad, salario, departamento_id)
 values("Luis", "Fernandez", 28, 2800.00,1);

/*  Actualiza el precio del producto "Laptop" a 1350.00 en la tabla "productos". */

UPDATE productos
set precio=1350.00
where nombre='Laptop'


/* Modifica la dirección del cliente "Juan Pérez" a "Alberti 1789, Mar del Plata" en la tabla "clientes". */

UPDATE clientes
SET direccion='Alberti 1789, Mar del Plata'
where nombre='Juan Perez'

/* Incrementa el salario de todos los empleados en un 5% en la tabla "empleados". */

UPDATE empleados
set salario=salario*1.05


/* Inserta un nuevo producto en la tabla "productos" con el nombre "Tablet" y un precio de 350.00. */

insert into productos(nombre, precio) values('Tablet', 350.00);

/* Inserta un nuevo cliente en la tabla "clientes" con el nombre "Ana López" y la dirección "Beltrán 1452, Godoy Cruz". */

insert into clientes(nombre, direccion) values('Ana aprendera', 'Beltran 1452, Godoy Cruz')

/* Inserta un nuevo empleado en la tabla "empleados" con el nombre "Marta",
 apellido "Ramírez", edad 32, salario 3100.00 y que pertenezca al departamento “ventas”. */

 insert into empleados (nombre, apellido, edad, salario, departamento_id)
 values("Marta", "Ramirez", 32, 3100.00,1);

/* Actualiza el precio del producto "Teléfono móvil" a 480.00 en la tabla "productos". */

update productos
set precio=480.00
where nombre='Televisor'

/* Modifica la dirección del cliente "María Guzman" a "Avenida 789, Ciudad del Este" en la tabla "clientes". */

update clientes
set direccion="Avenida 789, Ciudad del Este"
where nombre="Maria Guzman"

/* Incrementa el salario de todos los empleados en el departamento de "Ventas" en un 7% en la tabla "empleados". */

update empleados
set salario=salario*1.07
where departamento_id=1

/* Inserta un nuevo producto en la tabla "productos" con el nombre "Impresora" y un precio de 280.00. */

insert into productos(nombre,precio) values('Impresora', 280.00)

/* Inserta un nuevo cliente en la tabla "clientes" con el nombre "Carlos Sánchez" y la dirección "Saavedra 206, Las Heras". */

insert into clientes(nombre, direccion) values('Carlos Sanchez', 'Saavedra 206, Las Heras')

/* Inserta un nuevo empleado en la tabla "empleados" con el nombre "Lorena", apellido "Guzmán",
 edad 26, salario 2600.00 y que pertenezca al departamento “ventas”. */

insert into empleados (nombre, apellido, edad, salario, departamento_id)
values("Lorena", "Guzman", 26, 2600.00,1)

/* Haz una consulta simple de los datos de la tabla empleados y verifica que se presente de la siguiente manera: */

select * from empleados

/* 18. Haz una consulta simple de los datos de la tabla clientes y verifica que se presente de la siguiente manera: */

select * from clientes

/* 19. Haz una consulta simple de los datos de la tabla productos y verifica que se presente de la siguiente manera: */

select * from productos

