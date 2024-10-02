/* Actividades: Consultas base de datos*/

use nba;

/* Mostrar el nombre y peso de los diez jugadores que sean pivots (‘C’) 
y que pesen más de 200 libras, ordenados por peso.*/

select nombre, peso from jugadores where posicion = 'C' and peso > 200 order by peso desc limit 10;

/* Mostrar el nombre de los equipos del este (East). */

select nombre from equipos where Conferencia = 'East';

/* Mostrar los equipos donde su ciudad empieza con la letra ‘c’, ordenados por nombre. */

select nombre from equipos where ciudad like '%c%' order by nombre;

/* Mostrar los puntos por partido del jugador ‘Pau Gasol’ en la temporada ’04/05′. */

select e.puntos_por_partido from estadisticas e
inner join jugadores j on e.jugador = j.codigo
where j.Nombre = 'Pau Gasol' and e.temporada = '04/05';

/* Mostrar los diez jugadores con más puntos en toda su carrera con un redondeo de dos decimales. */

SELECT j.nombre, ROUND(SUM(e.puntos_por_partido), 2) AS "Puntos por partido"
FROM estadisticas e
INNER JOIN jugadores j ON e.jugador = j.codigo
GROUP BY j.nombre
ORDER BY SUM(e.puntos_por_partido) DESC
LIMIT 10;


/* Mostrar el nombre del equipo, conferencia y división del jugador más alto de cada equipo de la NBA. */

select j.nombre, j.altura, e.nombre as equipo, e.conferencia, e.division from equipos e
INNER JOIN jugadores j on e.nombre = j.Nombre_equipo
order by j.altura desc limit 1;

SELECT 
    e.Nombre AS Nombre_Equipo,
    e.Conferencia,
    e.Division,
    j.Nombre AS Nombre_Jugador,
    j.Altura
FROM 
    jugadores j
JOIN 
    equipos e ON j.Nombre_equipo = e.Nombre
WHERE 
    j.Altura = (
        SELECT 
            MAX(Altura)
        FROM 
            jugadores
        WHERE 
            Nombre_equipo = j.Nombre_equipo
    )
ORDER BY 
    e.Nombre;




SELECT 
    e.nombre as equipo, 
    e.conferencia, 
    e.division, 
    j.nombre AS jugador_mas_alto, 
    j.altura
FROM 
    jugadores j
INNER JOIN equipos e ON j.Nombre_equipo = e.nombre
WHERE 
    j.altura = (
        SELECT MAX(j2.altura)
        FROM jugadores j2
        WHERE j2.codigo = j.codigo
        ORDER BY j2.Altura desc
        LIMIT 1
    )
ORDER BY 
    e.nombre


select * from equipos
select * from jugadores
select * from estadisticas
select * from partidos

/* Mostrar los 10 partidos (equipo_local, equipo_visitante y diferencia) con mayor diferencia de puntos. */

select equipo_local, equipo_visitante, abs(puntos_local - puntos_visitante) 'Diferencia' 
from partidos
ORDER BY 'Diferencia' desc LIMIT 10;


/* Muestra el nombre del equipo con la mayor diferencia de puntos totales de la temporada temporada "00/01". */

select e.nombre, abs(p.puntos_local - p.puntos_visitante) 'Diferencia' from equipos e
inner join partidos p on e.Nombre = p.Equipo_local

/* Encuentra el nombre de los diez equipos que mejor porcentaje de victorias tengan en la temporada "98/99".
 El número de porcentaje debe estar escrito del 1 al 100 con hasta dos decimales y acompañado por el símbolo “%”. */

select e.nombre, (p.puntos_local / (p.puntos_local + p.puntos_visitante)) * 100 'Porcentaje' from equipos e

/* Calcula el promedio de puntos por partido de los jugadores que son pivotes ('C') y tienen más de 7 pies de altura, 
y redondea el resultado a dos decimales. */

/* Muestra el nombre del jugador que ha registrado el mayor número de asistencias en un solo partido. */

/* Encuentra el total de partidos en los que el equipo local anotó más de 100 puntos y el equipo visitante 
anotó menos de 90 puntos. */

/* Calcula la diferencia de puntos promedio en todos los partidos de la temporada “00/01” y redondea el 
resultado a dos decimales. */

/* Encuentra el nombre del equipo que ha tenido al menos un jugador que ha promediado más de 10 rebotes por
 partido en la temporada “97/98”. */

