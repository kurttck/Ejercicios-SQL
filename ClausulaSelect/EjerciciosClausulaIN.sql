/* ✏️Ejercicios cláusula IN
 Encuentra los empleados cuyos IDs son 1, 3 o 5. */

select * from empleados where id in (1,3,5);

/*  Busca los productos con IDs 2, 4 o 6 en la tabla de productos. */

    select * from productos where id in (2,4,6);


/*  Encuentra las ventas que tienen los clientes con IDs 1, 3 o 5. */

select * from ventas where id in (1,3,5);