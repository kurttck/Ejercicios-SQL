/* ✏️Ejercicios  Complementarios 
✨ Estos ejercicios son de tipo complementario. Esto quiere decir que te ayudará a avanzar 
en profundidad en el tema visto, pero no son obligatorios. Te recomendamos intentar con tu equipo trabajar algunos de ellos. */
/* Utiliza la función DAYOFWEEK para obtener el número del día de la semana en que se realizó el envío con ID 7. */

select DAYOFWEEK(fecha_envio) from envios where id = 7

/* Utiliza la función DAYOFYEAR para obtener el día del año en que se entregará el envío con código de producto 'JKL999'. */

select DAYOFYEAR(fecha_entrega) from envios where codigo_producto = 'JKL999'

/* Utiliza la función EXTRACT para obtener el año de la fecha de envío del envío con código de producto 'LMN001'. */

select EXTRACT(YEAR FROM fecha_envio) from envios where codigo_producto = 'LMN001'

/* Utiliza la función FROM_DAYS para obtener la fecha correspondiente a 737402 días a partir del año 0. */

select FROM_DAYS(737402)

/*  Utiliza la función FROM_UNIXTIME para saber que fecha sería si pasaron 1.617.799.784 segundos desde 1970. */

select FROM_UNIXTIME(1617799784)

/* Utiliza la función GET_FORMAT para obtener el formato de fecha “EUR” para formatear la fecha de entrega del
 envío con código de producto 'XYZ789'. */

select date_format(fecha_entrega, GET_FORMAT(DATE, 'EUR')) from envios where codigo_producto = 'XYZ789'

/* Utiliza la función HOUR para extraer la hora de la fecha de envío del envío con ID 1. */

select HOUR(fecha_envio) from envios where id = 1

/* Utiliza la función LAST_DAY para obtener el último día del mes de la fecha de entrega programada 
para el envío con código de producto 'XYZ789'. */

select LAST_DAY(fecha_entrega) from envios where codigo_producto = 'XYZ789'

/* Utiliza la función LOCALTIME para obtener la hora y la fecha local actual del servidor. */

select LOCALTIME()

/* Utiliza la función MAKEDATE para crear una fecha correspondiente al año 2023 y al día del año 180. */

select MAKEDATE(2023, 180)

/* Utiliza la función MAKETIME para crear una hora con 3 horas, 30 minutos y 15 segundos. */

select MAKETIME(3, 30, 15)

/* Utiliza la función MICROSECOND para obtener los microsegundos de la fecha de entrega del envío con ID 3. */

select MICROSECOND(fecha_entrega) from envios where id = 3

/* Utiliza la función MINUTE para obtener el minuto de la hora de envío del envío con ID 4. */

select MINUTE(fecha_envio) from envios where id = 4

/* Utiliza la función MONTH para obtener el mes de la fecha de envío del envío con ID 5. */

select MONTH(fecha_envio) from envios where id = 5

/* Utiliza la función MONTHNAME para obtener el nombre del mes de la fecha de envío del envío con ID 6. */

select MONTHNAME(fecha_envio) from envios where id = 6

/* Utiliza la función NOW para obtener la fecha y hora actual. */

select NOW()

/* Utiliza la función TIMESTAMPDIFF para calcular la diferencia en días entre la fecha de envío
 del envío con ID 5 y la fecha de entrega del envío con ID 6. */

select TIMESTAMPDIFF(DAY, 
(select fecha_envio from envios where id = 5),
(select fecha_entrega from envios where id = 6)) as diferencia_de_dias

/* Utiliza la función TO_DAYS para convertir la fecha de envío del envío con ID 7 en días. */

select TO_DAYS(fecha_envio) from envios where id = 7

/* Utiliza la función TO_SECONDS para convertir la fecha de entrega del envío con código de producto
 'JKL999' en segundos desde el Año 0. */

select TO_SECONDS(fecha_entrega) from envios where codigo_producto = 'JKL999'

/* Utiliza la función UNIX_TIMESTAMP para obtener una marca de tiempo Unix de la fecha de envío del envío con ID 1. */

select UNIX_TIMESTAMP(fecha_envio) from envios where id = 1

/* Utiliza la función UTC_DATE para obtener la fecha UTC actual. */

select UTC_DATE()

/* Utiliza la función UTC_TIME para obtener la hora UTC actual. */

select UTC_TIME()

/* Utiliza la función UTC_TIMESTAMP para obtener la fecha y hora UTC actual. */

select UTC_TIMESTAMP()

/* Utiliza la función WEEK para obtener el número de semana de la fecha de envío del envío con ID 2. */

select WEEK(fecha_envio) from envios where id = 2

/* Utiliza la función WEEKDAY para obtener el índice del día de la semana de la fecha de envío del envío con ID 3. */

select WEEKDAY(fecha_envio) from envios where id = 3

/* Utiliza la función WEEKOFYEAR para obtener la semana del calendario de la fecha de entrega del envío con ID 4. */

select WEEKOFYEAR(fecha_entrega) from envios where id = 4

/* Utiliza la función YEAR para obtener el año de la fecha de envío del envío con ID 5. */

select YEAR(fecha_envio) from envios where id = 5

/* Utiliza la función YEARWEEK para obtener el año y la semana de la fecha de envío del envío con ID 6. */

select YEARWEEK(fecha_envio) from envios where id = 6