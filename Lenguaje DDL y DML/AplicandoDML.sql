/* 1. Inserta un departamento llamado "Ventas" en la tabla "departamentos". */

select * FROM departamentos;
insert into departamentos(nombre) VALUES ('Ventas');

/* 2. Inserta un departamento llamado "Recursos Humanos" en la tabla "departamentos". */

insert into departamentos(nombre) values('Recursos Humanos');
/* 
3. Inserta un empleado en la tabla "empleados" con los siguientes valores:
Nombre: Ana
Apellido: Rodríguez.
Edad: 28.
Salario: 3000.00.
Correo electrónico: anarodriguez@mail.com
departamento_id: (debe coincidir con el ID del departamento "Ventas"
 que insertaste anteriormente, puedes saber el id haciendo una consulta a la tabla “SELECT * FROM departamentos”). */


select * from empleados
insert into empleados(nombre, apellido, edad, salario, correo_electronico, departamento_id)
values('Ana', 'Rodriguez', 28, 3000.00, 'anarodriguez@mail.com', 1)


/* 
4. Inserta otro empleado en la tabla "empleados" con los siguientes valores:
Nombre: Carlos.
Apellido: López.
Edad: 32.
Salario: 3200.50.
Correo electrónico: carloslopez@mail.com
departamento_id: (debe coincidir con el ID del departamento "Recursos Humanos" que insertaste anteriormente). */

insert into empleados(nombre, apellido, edad, salario, correo_electronico, departamento_id)
values('Carlos', 'Lopez', 32, 3200.50, 'carloslopez@mail.com', 2)


/* 5. Inserta un empleado en la tabla "empleados" con los siguientes valores:
Nombre: Laura
Apellido: Pérez
Edad: 26
Salario: 2800.75
Correo electrónico: lauraperez@mail.com
departamento_id:  (debe coincidir con el ID del departamento "Ventas" que insertaste anteriormente). */

insert into empleados(nombre, apellido, edad, salario, correo_electronico, departamento_id)
values('Laura', 'Perez', 26, 2800.75, 'lauraperez@mail.com', 1)


/* 6. Inserta otro empleado en la tabla "empleados" con los siguientes valores:
Nombre: Martín
Apellido: González
Edad: 30
Salario: 3100.25
Correo electrónico: martingonzalez@mail.com
departamento_id: (debe coincidir con el ID del departamento "Recursos Humanos" que insertaste anteriormente). */

insert into empleados(nombre, apellido, edad, salario, correo_electronico, departamento_id)
values('Martín', 'Gonzalez', 30, 3100.25, 'martingonzalez@mail.com', 2)


/* 7. Actualiza el salario del empleado con nombre "Ana" para aumentarlo en un 10%. */

update empleados
set salario = (salario * 1.10)
where nombre = 'Ana'


/* 8. Crea un departamento llamado “Contabilidad”.  */

insert into departamentos (nombre) values('Contabilidad')


/* 9. Cambia el departamento del empleado con nombre "Carlos" de "Recursos Humanos" a "Contabilidad": */

update empleados
set departamento_id = 3
where nombre = "Carlos"


/* 10. Elimina al empleado con nombre "Laura" */

delete from empleados
where nombre = 'Laura'

/* 11. Haz una consulta simple de los datos de la tabla empleados y verifica que se presente de la siguiente manera: */

select * from empleados

/* 12. Haz una consulta simple de los datos de la tabla departamentos y verifica que se presente de la siguiente manera:
 */
select * from departamentos