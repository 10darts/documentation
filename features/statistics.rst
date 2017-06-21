============
Estadísticas
============

Globales sobre canales y usuarios
---------------------------------

Se podrá acceder a las siguientes estadísticas, referidas a agrupadas
por *días*, *semanas* o *meses*.

- **Canales**
- **Canales vivos**
- **Usuarios**
- **Usuarios vivos**

Churn
^^^^^

Consideramos que el **churn** se corresponde con número de canales que han dejado de ser aptos para
la recepción de pushes. Un dispositivo se considera que no es apto en el momento en
que el *token* que le identifica para el envío de pushes ha sido marcado como *inválido* por
los servicios de Apple y Google.

Globales sobre campañas
-----------------------

Se podrá acceder a las siguientes estadísticas para cada una de las
campañas, y ver su evolución en el tiempo:

- **Notificaciones push enviadas**, el número total de pushes enviados.
- **Notificaciones push recibidas**, el número total de pushes que han sido confirmadas como recibidas.
- **Notificaciones push abiertas**, el número total de pushes que el usuario ha abierto para acceder al contenido.

De entre las notificaciones que se tienen en cuenta se excluyen aquellas que son *silent*.

Para cada campaña
-----------------

Para cada *campaña* se podrá ver las siguientes estadísticas,
y su evolución con el tiempo.

- **Destinatarios**, canales a los que se les ha enviado la notificación.
- **Recibidas**, el número total de notificaciones que han sido confirmadas como recibidas.
- **Abiertas**, el número total de notificaciones que el usuario ha abierto para acceder al contenido.

Además sabrá los siguientes datos:

- **Churn**, número de dispositivos que a las *12 horas* se ha marcado como inactivo.

Cohorts
-------

En las *cohorts* se muestra la evolución de los dispositivos que
han tenido actividad con su aplicación durante las semanas. La fecha en las filas se corresponde con la fecha
de inicio de la semana donde los dispositivos han sido creados, mientras que la fecha en las columnas se
corresponden con las fechas en donde se ha tenido actividad.

Ejemplo:

+---------------+---------------+---------------+---------------+
|               | **Semana 0**  | **Semana 1**  | **Semana 2**  |
+===============+===============+===============+===============+
| **13/3/2017** |          100% |           17% |            6% |
+---------------+---------------+---------------+---------------+
| **20/3/2017** |          100% |         18.1% |               |
+---------------+---------------+---------------+---------------+
| **27/3/2017** |          100% |               |               |
+---------------+---------------+---------------+---------------+

.. note::
    De los dispositivos creados durante la semana del 13/3/2017, durante esta semana han tenido actividad el 100% de los canales (se corresponde con el total de creados). Durante la semana de 20/3/2017, "Semana 1", de estos dispositivos, han tenido actividad el 17%.
