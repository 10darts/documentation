============
Estadísticas
============

Globales sobre notificaciones push
----------------------------------

Cada **cliente** podrá acceder a las siguientes estadísticas, agrupadas
por *días* o *semanas*.

- **Notificaciones push enviadas**, el número total de notificaciones enviadas.
- **Notificaciones push recibidas**, el número total de notificaciones que han sido confirmadas como recibidas.
- **Notificaciones push clicadas**, el número total de notificaciones que el usuario ha clicado para acceder al contenido.
- **Dispositivos a los que se les ha enviado al menos una notificación push**
- **Media de notificaciones por dispositivo**
- **Varianza de notificaciones por dispositivo**

De entre las notificaciones que se tienen en cuenta se excluyen aquellas que son *silent*.

Globales sobre dispositivos
---------------------------

Cada **cliente** podrá acceder a las siguientes estadísticas, agrupadas
por *días* o *semanas*.

- **Dispositivos** registrados durante el periodo de tiempo indicado
- **Total dispositivos** creados hasta la fecha indicada
- **Usuarios** registrados durante el periodo de tiempo indicado
- **Total usuarios** creados hasta la fecha indicada

Los usuarios en este caso son aquellos que se han creado y asociado a un dispositivo.

Churn
^^^^^

Consideramos que el **churn** se corresponde con número de dispositivos que han dejado de ser aptos para
la recepción de pushes. Un dispositivo se considera que no es apto en el momento en
que el *token* que le identifica para el envío de pushes ha sido marcado como *inválido* por
los servicios de Apple y Google.

Ejemplo
^^^^^^^

+---------------+--------------------+---------------------+--------------------+--------------+---------------------------------+------------------------------------+-------+
|               | Not. Push Enviadas | Not. Push Recibidas | Not. Push Clicadas | Dispositivos | Avg. Notificaciones/Dispositivo |  Sigma2 Notificaciones/Dispositivo | Churn |
+===============+====================+=====================+====================+==============+=================================+====================================+=======+
| **13/3/2017** |                    |                     |                    |              |                                 |                                    |       |
+---------------+--------------------+---------------------+--------------------+--------------+---------------------------------+------------------------------------+-------+
| **20/3/2017** |                    |                     |                    |              |                                 |                                    |       |
+---------------+--------------------+---------------------+--------------------+--------------+---------------------------------+------------------------------------+-------+
| **27/3/2017** |                    |                     |                    |              |                                 |                                    |       |
+---------------+--------------------+---------------------+--------------------+--------------+---------------------------------+------------------------------------+-------+

Para cada notificación push
---------------------------

Para cada *notificación push* el usuario podrá ver las siguientes estadísticas.

- **Destinatarios**, dispositivos a los que se les ha enviado la notificación.
- **Recibidas**, el número total de notificaciones que han sido confirmadas como recibidas.
- **Clicadas**, el número total de notificaciones que el usuario ha clicado para acceder al contenido.
- **Churn**, número de dispositivos que a las *12 horas* se ha marcado como inactivo.

Estas estadísticas se ofrecerán de forma global para la notificación.

Además, se mostrará al usuario la evolución de los valores de **recibidos** y **clicadas** en el tiempo en forma de
gráfica.

Cohorts
-------

En las *cohorts* que se le ofrecen a los **cliente** se muestra la evolución de los dispositivos que
han tenido actividad con su aplicación durante las semanas. La fecha en las filas se corresponde con la fecha
de inicio de la semana donde los dispositivos han sido creados, mientras que la fecha en las columnas se
corresponden con las fechas en donde se ha tenido actividad.

Ejemplo:

+---------------+---------------+---------------+---------------+
|               | **13/3/2017** | **20/3/2017** | **27/3/2017** |
+===============+===============+===============+===============+
| **13/3/2017** |         9.940 |         8.120 |         6.487 |
+---------------+---------------+---------------+---------------+
| **20/3/2017** |               |         7.310 |         6.105 |
+---------------+---------------+---------------+---------------+
| **27/3/2017** |               |               |         9.217 |
+---------------+---------------+---------------+---------------+

*De los dispositivos creados durante la semana del 13/3/2017, durante esta semana han tenido actividad 9.940 dispositivos (se corresponde con el total de creados). Durante la semana de 20/3/2017, de estos dispositivos, han tenido actividad 8.120.*

