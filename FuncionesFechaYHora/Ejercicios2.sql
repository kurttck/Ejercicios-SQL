/* ✏️Ejercicios funciones de  fecha y hora
Utiliza la función PERIOD_ADD para agregar un período de 3 meses al año-mes '2022-07'. */

select period_add(202207, 3) as año_mes;

/* Utiliza la función PERIOD_DIFF para calcular el número de meses entre los períodos '2022-03' y '2022-12'. */

SELECT PERIOD_DIFF(202212, 202203) AS meses;      

/* Utiliza la función QUARTER para obtener el trimestre de la fecha de entrega del envío con código de producto 'PQR456'. */

select quarter(fecha_entrega) from envios where codigo_producto = 'PQR456'

/* Utiliza la función SEC_TO_TIME para convertir 3665 segundos en formato 'hh:mm:ss'. */

select sec_to_time(3665)

/* Utiliza la función SECOND para obtener los segundos de la hora de envío del envío con ID 2. */

select SECOND(fecha_envio) from envios where id = 2

select * from envios where id = 2

/* Utiliza la función STR_TO_DATE para convertir la cadena '2022()08()15' en una fecha. */

select str_to_date('2022()08()15', '%Y()%m()%d') as fecha

/* Utiliza la función SUBDATE (o DATE_SUB) para restar 5 días a la fecha de entrega del envío con código de producto 'GHI888'. */

select SUBDATE(fecha_entrega, 5) from envios where codigo_producto = 'GHI888'

/* Utiliza la función SUBTIME para restar 2 horas y 15 minutos a la hora de envío del envío con ID 7. */

select subtime(fecha_envio, '2:15:00') from envios where id = 7

/* Utiliza la función TIME para extraer la porción de tiempo de la fecha de envío del envío con ID 1. */

select time(fecha_envio) from envios where id = 1

/* Utiliza la función TIME_FORMAT para formatear la hora de envío del envío con ID 2 en 'hh:mm:ss'. */

select time_format(fecha_envio, '%H:%i:%s') from envios where id = 2

/* Utiliza la función TIME_TO_SEC para convertir la hora de envío del envío con ID 3 en segundos. */

select time_to_sec(fecha_envio) from envios where id = 3

/* Utiliza la función TIMEDIFF para calcular la diferencia de horas entre las fechas de envío y entrega del envío con ID 4. */

select timediff(fecha_envio, fecha_entrega) from envios where id = 4

/* Utiliza la función SYSDATE para obtener la hora exacta en la que se ejecuta la función en la consulta. 
Para comprobar esto invoca SYSDATE, luego la función SLEEP durante 5 segundos y luego vuelve a invocar la
 función SYSDATE, y verifica la diferencia entre ambas invocaciones con TIMEDIFF. */

SELECT TIMEDIFF(hora_final, hora_inicial) AS diferencia_de_hora FROM
( SELECT
SYSDATE() AS hora_inicial,
SLEEP(5),
SYSDATE() AS hora_final) t;

/* Crea una consulta que utilice la función TIMESTAMP para obtener todos los valores de fecha_envio sumandole 12 horas. */

select timestamp(fecha_envio, '12:00:00') from envios

/* Utiliza la función TIMESTAMPADD para agregar 3 horas a la fecha de entrega del envío con código de producto 'XYZ789'. */

select timestampadd(hour, 3, fecha_entrega) from envios where codigo_producto = 'XYZ789'