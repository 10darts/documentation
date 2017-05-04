=======
Devices
=======

Registro de dispositivos
------------------------

.. http:post:: /api/v1/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/devices/ HTTP/1.1
        Content-Type: application/json

        {
            "token": "...",
            "platform": 0,
            "position": {
            "type": "Point",
                "coordinates": [-123.0208, 44.0489]
            }
        }

    :<json string token: token identificativo del dispositivo para la recepción de pushes
    :<json int platform: plataforma del dispositivo, ``0`` para Android, ``1`` para iOS
    :<json string user: usuario al que está asociado el dispositivo
    :<json string model: cadena de descripción del modelo del dispositivo
    :<json string version: cadena que identifica la versión del cliente que usa el dispositivo
    :<json string language: cadena que identifica el idioma del dispositivo
    :<json GeoJSON position: coordenadas del dispositivo, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 4,
            "code": "9XzsNm",
            "platform": 0,
            "persona": null,
            "disabled": false,
            "model": "",
            "version": null,
            "language": null,
            "position": {
                "type": "Point",
                    "coordinates": [-123.0208, 44.0489]
                }
        }

    :>json int id: id interno único del dispositvo
    :>json string code: codigo único del dispositivo, es el que se usa al hacer referencia a este en el resto del API
    :>json int platform: plataforma del dispositivo, ``0`` para Android, ``1`` para iOS
    :>json string persona: usuario ('persona') al que está asociado el dispositivo
    :>json string model: cadena de descripción del modelo del dispositivo
    :>json string version: cadena que identifica la versión del cliente que usa el dispositivo
    :>json string language: cadena que identifica el idioma del dispositivo
    :>json GeoJSON position: coordenadas del dispositivo, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**


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
