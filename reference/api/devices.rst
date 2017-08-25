=======
Devices
=======

Platforms
---------

.. http:get:: /api/v1/platforms/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/platforms/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
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

Device register
---------------

.. http:post:: /api/v1/devices/

    **Request example**:

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

    :<json string token: identification device token needed for push reception.
    :<json string platform: device platform, ``android``, ``ios`` or ``ios_sandbox``.
    :<json string model: device model description string.
    :<json string version: app version description string.
    :<json string language: language description string with 2 characters.
    :<json string country: country description string with 2 characters.
    :<json GeoJSON position: device positioning where coordinates is an array with the following coordinates:  **[longitud, latidud]**.
    :<json string persona: user URI with which the device will be linked

    **Response example**:

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

    :>json int id: unique internal device id
    :>json string code: unique device code, is the one used to refer to that device elsewhere in the API.
    :>json string platform: device platform, ``android``, ``ios`` or ``ios_sandbox``.
    :>json string persona: user linked to the device.
    :>json string model: device model description string
    :>json string version: app version description string
    :>json string language: language description string
    :>json string country: country description string with 2 characters
    :>json GeoJSON position: device positioning where coordinates are defined as follows: **[longitud, latidud]**

.. note::

    Si no se indica un usuario (campo ``persona``) en la petición de creación
    de device, este se creará de forma automática y se devolverá en la
    respuesta de creación.

.. note::

    Si no se especifica un país, se tomara automáticamente desde las coordenadas
    que se introducen. Si no se dan unas coordenadas, se usará la IP para
    establecer el país del dispositivo.

.. _api-devices-update:

Device update
-------------

Update position, user or other data.

.. http:patch:: /api/v1/devices/(string:code)/

    **Request example**:

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

    :<json string persona: user linked to the device.
    :<json bool disabled: boolean that shows if push notifications have been activated or not in the device.
    :<json string model: device model description string.
    :<json string version: app version description string.
    :<json string language: language description string with 2 characters.
    :<json GeoJSON position: device positioning where coordinates is an array with the following coordinates:  **[longitud, latidud]**.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

.. _api-devices-link:

Link a device with a user/individual
------------------------------------

To link a user with a device you can make a call to ``/api/v1/devices/links/`` 
specifying in the ``client_data`` field the unique value that identifies
that user.

.. http:post:: /api/v1/devices/links/

   **Request example**:

   .. sourcecode:: http

       PATCH /api/v1/devices/links/ HTTP/1.1
       Content-Type: application/json

       {
           "device": "/api/v1/devices/9XzsNm/",
           "client_data": "foo"
       }

   :<json string device: device's URI that needs to be updated.
   :<json string client_data: client's unique reference to identify the user.

   **Response example**:

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

       La respuesta a esta llamada es el device actualizado con la información
       del usuario con la que está enlazado.

.. _api-devices-unlink:

Unlink a device with a user / individual
----------------------------------------

Se desenlazará un usuario de un device cuando esta cierre la sesión en la
aplicación con la que se este integrando.

.. http:post:: /api/v1/devices/unlink/

   **Request example**:

   .. sourcecode:: http

       PATCH /api/v1/devices/unlink/ HTTP/1.1
       Content-Type: application/json

       {
           "device": "/api/v1/devices/9XzsNm/"
       }

   :<json string device: device's URI that needs to be updated.

   **Response example**:

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

       La respuesta a esta llamada es el device actualizado con la información
       de un nueva persona anónima con la que está enlazado.

Device search
-------------

.. http:get:: /api/v1/devices/?(string:field)=(string:value)

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/devices/?token=dummy HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count": 1,
            "next": null,
            "previous": null,
            "results": [
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
            ]
        }

    :query token: token value under search

.. _api-devices-access:

Access register
---------------

Para registrar la actividad de un dispositivo se necesita que se realice una
llamada explícita para que se registre el acceso de un dispositivo.

.. http:post:: /api/v1/devices/(string:code)/access/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/devices/(string:code)/access/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
