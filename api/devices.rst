=======
Devices
=======

Plataformas
-----------

.. http:get:: /api/v1/platforms/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/platforms/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "count": 2,
            "next": null,
            "previous": null,
            "results": [
                {
                    "name": "android"
                },
                {
                    "name": "ios"
                }
            ]
        }

Registro de dispositivos
------------------------

.. http:post:: /api/v1/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/devices/ HTTP/1.1
        Content-Type: application/json

        {
            "token": "...",
            "platform": "android",
            "position": {
            "type": "Point",
                "coordinates": [-123.0208, 44.0489]
            }
        }

    :<json string token: token identificativo del dispositivo para la recepción de pushes
    :<json string platform: plataforma del dispositivo, ``android`` para Android, ``ios`` para iOS
    :<json string user: usuario al que está asociado el dispositivo
    :<json string model: cadena de descripción del modelo del dispositivo
    :<json string version: cadena que identifica la versión del cliente que usa el dispositivo
    :<json string language: cadena que identifica el idioma del dispositivo
    :<json GeoJSON position: coordenadas del dispositivo, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**
    :<json string persona: URI de la persona con la que vincular el dispositivo

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 4,
            "code": "9XzsNm",
            "platform": "android",
            "disabled": false,
            "model": "",
            "version": null,
            "language": null,
            "position": {
                "type": "Point",
                    "coordinates": [-123.0208, 44.0489]
                },
            "persona": "/api/v1/personas/IECwPN/"
        }

    :>json int id: id interno único del dispositvo
    :>json string code: codigo único del dispositivo, es el que se usa al hacer referencia a este en el resto del API
    :>json string platform: plataforma del dispositivo, ``android`` para Android, ``ios`` para iOS
    :>json string persona: usuario ('persona') al que está asociado el dispositivo
    :>json string model: cadena de descripción del modelo del dispositivo
    :>json string version: cadena que identifica la versión del cliente que usa el dispositivo
    :>json string language: cadena que identifica el idioma del dispositivo
    :>json GeoJSON position: coordenadas del dispositivo, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

.. note::

    Si no se indica una persona en la petición de creación de device, esta se
    creará de forma automática y se devolverá en la respuesta de creación.


Actualizar dispositivo
----------------------

Para actualizar la posición, el usuario asociado u otros datos.

.. http:patch:: /api/v1/devices/(string:code)/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/devices/(string:code)/ HTTP/1.1
        Content-Type: application/json

        {
            "persona": "/api/v1/personas/9XzsNm/",
            "position": {
                "type": "Point",
                    "coordinates": [-123.0208, 44.0489]
                }
        }

    :<json string persona: usuario ('persona') al que está asociado el dispositivo
    :<json string model: cadena de descripción del modelo del dispositivo
    :<json string version: cadena que identifica la versión del cliente que usa el dispositivo
    :<json string language: cadena que identifica el idioma del dispositivo
    :<json bool disabled: booleano que indica si se han desactivado/activado las notificaciones push en el dispositivo
    :<json GeoJSON position: coordenadas del dispositivo, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Enlazar un dispositivo a una persona
------------------------------------

Para enlazar un usuario del cliente con el dispositivo, se puede realizar una
llamada a ``/api/v1/devices/links/`` indicando en el campo de ``client_data``
el valor que identifica al usuario de forma única para el cliente.

.. http:post:: /api/v1/devices/links/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/devices/links/ HTTP/1.1
        Content-Type: application/json

        {
            "device": "/api/v1/devices/9XzsNm/",
            "client_data": "foo"
        }

    :<json string device: URI del device que se quiere actualizar
    :<json string client_data: referencia única del cliente que identifica la persona

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 4,
            "code": "9XzsNm",
            "platform": "android",
            "disabled": false,
            "model": "",
            "version": null,
            "language": null,
            "position": {
                "type": "Point",
                    "coordinates": [-123.0208, 44.0489]
                },
            "persona": "/api/v1/personas/IECwPN/"
        }
    .. note::

        La respuesta a esta llamada es el device actualizado con la información de la persona con la que está enlazado.

Registro de acceso
------------------

Para registrar la actividad de un dispositivo, se necesita que se realice una llamada
explícita para que se registre el acceso de un dispositivo.

.. http:post:: /api/v1/devices/(string:code)/access/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/devices/(string:code)/access/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
