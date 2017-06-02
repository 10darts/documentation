======
Pushes
======

Read
----

Los pushes leídos no afectan directamente a las estadísticas de los devices, sino que
se utilizan para el parámetro ``badge`` de cada dispositivo. Un push puede ser leído sin
que este haya sido pulsado por el usuario.

.. http:patch:: /api/v1/pushes/(string:code)/read/

    Marca el push indicado como leído.

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/pushes/(string:code)/read/ HTTP/1.1
        Content-Type: application/json

        {
            "device": "/api/v1/devices/9XzsNm/"
        }

    :<json string device: device que realiza la acción

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

.. http:put:: /api/v1/pushes/all_read/

    Marca todos los pushes no leídos como leídos.

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/pushes/all_read/ HTTP/1.1
        Content-Type: application/json

        {
            "device": "/api/v1/devices/9XzsNm/"
        }

    :<json string device: device que realiza la acción

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Follow
------

La acción de ``follow`` sobre un push se corresponde con la acción que realiza el usuario
al hacer click en la notificación que le llega al dispositivo.

.. http:patch:: /api/v1/pushes/(string:code)/follow/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/pushes/(string:code)/follow/ HTTP/1.1
        Content-Type: application/json

        {
            "device": "/api/v1/devices/9XzsNm/"
        }

    :<json string device: device que realiza la acción

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Received
--------

El push se marca como recibido de forma automática en el momento en que este llega al
dispositivo. De esta forma se tiene la certeza de que pese a la falta de garantías que
nos dan los sistemas de entrega de notificaciones push, esta notificación sí ha llegado.

.. http:patch:: /api/v1/pushes/(string:code)/received/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/pushes/(string:code)/received/ HTTP/1.1
        Content-Type: application/json

        {
            "device": "/api/v1/devices/9XzsNm/"
        }

    :<json string device: device que realiza la acción

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
