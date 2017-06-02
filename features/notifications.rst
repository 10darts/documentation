.. _notifications:

==============
Notificaciones
==============

Se entiende que una **notificación** es todo aquella comunicación que un **cliente** quiere distribuir entre
un segmento de sus usuarios, identificados por sus dispositivos.

Toda notificación puede tener las siguientes características opcionales no excluyentes:

- **Notificación silenciosa**, si esta característica está activada, el SDK se encargará de no mostrar la notificación al usuario final.
- **Acuse de recibo**, si esta característica está activada, el SDK se encargará de notificar al backend que la notificación ha sido recibida por el usuario.
- **Muestreo aleatorio**, si esto está activo, se tendrá que indicar además un tamaño de la muestra deseado, de tal forma que los dispositivos a los que la notificación será enviada serán seleccionados de forma aleatoria, teniendo como límite el tamaño de muestra indicado.

Se puede realizar una segmentación geográfica de los dispositivos. En función del tipo de área definida para la
selección geográfica de dispositivos, una notificación puede ser de los siguientes tipos, excluyentes entre sí:

- **Radial**, el filtro geográfico para la selección de dispositivos se corresponde con una circunferencia, definida por un centro y un radio (en metros).
- **Zonal**, el filtro geográfico para la selección de dispositivos se corresponde con un conjunto de polígonos, que se pueden extraer de regiones administrativas, como barrios, ciudades, estados, países, etc.

Además, se puede realizar segmentación, que se irá acumulando usando los siguiente parámetros:

- **Idioma**
- **Versión del cliente instalada**
- **Plataforma**, seleccionando entre iOS y/o Android

Independientemente de la *segmentación* que se realice del usuario, a cada notificación se le puede aplicar un
**ripple effect**, es decir, el algoritmo que se utilizará para la distribución de la notificación entre los
dispositivos alcanzables.

Reintentos
----------

Una notificación **que no tenga activado el 'ripple effect'** y **haya sido enviada** puede ser **reintentada**. Un reintento significa
que se creará una notificación nueva que ha de ser enviada, donde se seleccionarán los dispositivos objetivos de la
siguiente forma:

- Se parte de los dispositivos **seleccionados en el momento de enviar la notificación original**.
- De este conjunto, se excluyen aquellos que hayan **abierto el push**.
- Del resultado, se excluyen también aquellos que hayan dado **error al mandar el push**.
- Si la notificación original tiene marcado la confirmación de entrega, del resultado anterior, se excluyen los que han marcado el **push como recibido**.

Se puede hacer un reintento de una notificación que sea ya un reintento de una anterior, y la selección de
dispositivos se seleccionarán de forma análoga.


Ripple Effect
-------------

Geo Ripple
^^^^^^^^^^

Si la notificación es del tipo **radial**, puede tener activado el **ripple effect** como sistema
para la expansión de esa notificación de forma automática.

.. image:: /_static/images/ripple_effect.png

1. Partiendo de un centro y de un radio, se **seleccionan los dispositivos** que están disponibles para este primer *ripple*.

2. Se crean cada uno de los grupos de dispositivos a los que se va a enviar esta primera oleada de notificaciones. Cada uno de esos grupos se asocia a un paso. La versión actual del algoritmo tarbaja en **dos pasos**, un grupo seleccionado a partir de los dispositivos que han tenido actividad maás recientemente, y otro grupo con el resto.

   El tamaño del grupo de dispositivos del primer paso (**grupo de control**) viene dado por las siguientes reglas:

   - Se seleccionan todos los *dispositivos activos*, aquellos que han tenido actividad registrada en las últimas 48 horas.
   - Si el tamaño de este conjunto es menor que el tamaño mínimo deseado (250), se seleccionan todos.
   - Si el 10% del total de dispositivos activos es es menor que diez veces el tamaño mínimo deseado (2500), se selecciona el 10% de los dispositivos activos.
   - En cualquier otro caso, se seleccionan diez veces el tamaño mínimo deseado (2500) dispositivos.

   Cuando la selección es menor que el total de dispositivos activos, esta se hace siempre de forma aleatoria.

3. Se **envian los pushes** al *grupo de control*. Justo después de enviarlos, se calcula cuando será comprovación de relevancia, teniendo en cuanta la zona horaria donde se encuentra el punto central del contenido.

   Dor defecto se programa para *15 minutos después* del envío de los pushes. Si esa comprobación resulta ser entre las 23h y las 7h de la zona horaria correspondiente, se retrasa de forma proporcional, para comprobarse a partir de las 7h.

4. Se **comprueba la relevancia** de la notificación, midiendo tanto el ratio de aperturas del push, como el ratio la actividad que ha generado el contenido con el volumen de audiencia de la zona.

   El volumen de la audiencia del contenido ha de ser actualizado desde la plataforma que genera el contenido.

   Si supuera alguno de los dos criterios, por ratio de aperturas, o por audiencia, se marca como **relevante en el paso inicial**.

   En caso contrario, se programa con los mismo criterios anteriores, la hora de la siguiente comprobación.

5. Si es relevante, **se envia el push al siguiente paso**, con el resto de dispositivos, y se repite la comprobación de relevancia anterior, puntos 3 y 4.

6. Si en el último es relevante, se genera una nueva notificación a partir de la inicial, un nuevo *ripple*, **ampliando el radio** y se repiten los pasos desde el punto 1.

7. Si en cualquiera de los pasos, se supera el **tiempo máximo de 8 horas** sin que sea relevante, se deja de comprobar y se para el algoritmo.

8. Las expansiones se detienen también al llegar a un **radio máximo, de 1000Km**.


Progressive Ripple
^^^^^^^^^^^^^^^^^^

El algoritmo de expansión progresiva realiza una distribución de los pushes a los dispositivos disponibles para la
notificación, de tal forma que se crean 10 grupos de dispositivos, para cada una de las fases de envío,
teniendo en cuenta que:

- Al enviar el 1º grupo, se cubrirá el 1% de los dispositivos totales.
- Al enviar el 2º grupo, se cubrirá el 2% de los dispositivos totales.
- Al enviar el 3º grupo, se cubrirá el 3% de los dispositivos totales.
- Al enviar el 4º grupo, se cubrirá el 5% de los dispositivos totales.
- Al enviar el 5º grupo, se cubrirá el 8% de los dispositivos totales.
- Al enviar el 6º grupo, se cubrirá el 13% de los dispositivos totales.
- Al enviar el 7º grupo, se cubrirá el 21% de los dispositivos totales.
- Al enviar el 8º grupo, se cubrirá el 34% de los dispositivos totales.
- Al enviar el 9º grupo, se cubrirá el 55% de los dispositivos totales.
- Al enviar el 10º grupo, se cubrirá el 100% de los dispositivos totales.

Una vez creados los grupos, se envía la notificación:

1. Se envía al primer grupo no enviado aún.
2. Se comprueba la relevancia, de la misma forma que en el *ripple effect*.
3. Si es relevante, se envía al siguiente grupo.
4. Si no es relevante, se no se hace nada hasta la siguiente comprobación.
5. Cuando pasa el tiempo límite, se detienen las comprobaciones de relevancia.

.. image:: /_static/images/progressive.png
