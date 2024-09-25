/* ✏️ Ejercicios funciones de  fecha y hora
Crea una tabla llamada "envios" con cuatro columnas: "id" de tipo INT como clave primaria y autoincremental,
 "fecha_envio" de tipo DATETIME,  "fecha_entrega" de tipo DATETIME y "codigo_producto" de tipo VARCHAR(10).
  Luego, inserta siete filas en la tabla "envios" con los siguientes datos:
Fecha Envío: '2022-01-15 08:00:00', Fecha Entrega: '2022-01-20 12:30:00', Código Producto: 'ABC123'.
Fecha Envío: '2022-02-10 10:15:00', Fecha Entrega: '2022-02-15 14:45:00', Código Producto: 'XYZ789'.
Fecha Envío: '2022-03-05 09:30:00', Fecha Entrega: '2022-03-10 13:20:00', Código Producto: 'PQR456'.
Fecha Envío: '2022-04-20 11:45:00', Fecha Entrega: '2022-04-25 15:10:00', Código Producto: 'LMN001'.
Fecha Envío: '2022-05-12 07:55:00', Fecha Entrega: '2022-05-17 10:25:00', Código Producto: 'DEF777'.
Fecha Envío: '2022-06-08 08:20:00', Fecha Entrega: '2022-06-13 12:40:00', Código Producto: 'GHI888'.
Fecha Envío: '2022-07-03 10:05:00', Fecha Entrega: '2022-07-08 14:15:00', Código Producto: 'JKL999'. */

create table envios(
    id int primary key auto_increment,
    fecha_envio datetime,
    fecha_entrega datetime,
    codigo_producto varchar(10)
    )

insert into envios(fecha_envio, fecha_entrega, codigo_producto)
values('2022-01-15 08:00:00', '2022-01-20 12:30:00', 'ABC123'), 
('2022-02-10 10:15:00', '2022-02-15 14:45:00', 'XYZ789'),
('2022-03-05 09:30:00', '2022-03-10 13:20:00', 'PQR456'),
('2022-04-20 11:45:00', '2022-04-25 15:10:00', 'LMN001'),
('2022-05-12 07:55:00', '2022-05-17 10:25:00', 'DEF777'),
('2022-06-08 08:20:00', '2022-06-13 12:40:00', 'GHI888'),
('2022-07-03 10:05:00', '2022-07-08 14:15:00', 'JKL999')    

/* Utilizando la función DATE_ADD, calcula la fecha de entrega programada para un envío con código de producto
 'ABC123' cuando se le añaden 5 días a la fecha de envío. */

select date_add(fecha_envio, interval 5 day) from envios where codigo_producto = 'ABC123'

/* Utilizando la función ADDTIME, encuentra la hora estimada de entrega para un envío con código de producto
 'XYZ789' si se suma 4 horas y 30 minutos a la hora de entrega.  */

select addtime(fecha_entrega, '4:30:00') from envios where codigo_producto = 'XYZ789'

/* Utilizando la función CONVERT_TZ, convierte la fecha de envío de un envío con código de producto 'PQR456' 
de la zona horaria 'UTC' (+00:00) a la zona horaria de Argentina GMT-3 (-03:00). */

select convert_tz(fecha_envio, '+00:00', '-03:00') from envios where codigo_producto = 'PQR456'

/* Calcula la diferencia en días entre la fecha de entrega y la fecha de envío para el envío con código de producto
 'LMN001' utilizando la función DATEDIFF. */

select datediff(fecha_entrega, fecha_envio) from envios where codigo_producto = 'LMN001'

/* Utiliza la función CURDATE para obtener la fecha actual y, a continuación, obtener la diferencia en días entre
 la fecha de entrega con código de producto 'DEF777' y la fecha actual. */

select curdate(), datediff(curdate(), fecha_entrega) from envios where codigo_producto = 'DEF777'

/* Utilizando la función CURTIME, obtén la hora actual del sistema. */

select curtime()

/* Utiliza la función DATE para extraer la fecha de envío del envío con ID 3. */

select date(fecha_envio) from envios where id = 3 /*solo muestra dia */

/* Utiliza la función DATE_ADD para calcular la fecha de entrega programada para el envío con código de producto
 'XYZ789' si se le agregan 3 días a la fecha de envío. */

select date_add(fecha_envio, interval 3 day) from envios where codigo_producto = 'XYZ789'

/* Utiliza la función DATE_FORMAT para mostrar la fecha de envío del envío con ID 6 en el formato 'DD-MM-YYYY'. */

select date_format(fecha_envio, '%d-%m-%Y') from envios where id = 6

/* Utiliza la función DATE_SUB para calcular la fecha de envío del envío con ID 4 si se le restan 2 días. */

select date_sub(fecha_envio, interval 2 day) from envios where id = 4

/* Utiliza la función DATEDIFF para calcular la diferencia en días entre la fecha de envío y la fecha de entrega
 programada para el envío con código de producto 'PQR456'. */

select datediff(fecha_envio, fecha_entrega) from envios where codigo_producto = 'PQR456'

/* Utiliza la función DAY para obtener el día del mes en que se realizó el envío con ID 2. */

select day(fecha_envio) from envios where id = 2

/* Utiliza la función DAYNAME para obtener el nombre del día de la semana en que se entregará el envío con código
 de producto 'DEF777'. */

select dayname(fecha_entrega) from envios where codigo_producto = 'DEF777'

/* Utiliza la función DAYOFMONTH para obtener el día del mes en que se entregará el envío con código de producto 'GHI888'. */

select dayofmonth(fecha_entrega) from envios where codigo_producto = 'GHI888'