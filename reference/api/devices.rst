.. _api-devices:

===========
Touchpoints
===========

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

Touchpoint register
-------------------

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

    :<json string token: identification touchpoint token needed for push reception.
    :<json string platform: touchpoint platform, ``android``, ``ios``, ``ios_sandbox``, ``web`` or ``messenger``.
    :<json string model: touchpoint model description string.
    :<json string version: app version description string.
    :<json string sdk: sdk version description string.
    :<json string language: language description string with 2 characters.
    :<json string country: country description string with 2 characters.
    :<json GeoJSON position: touchpoint positioning where coordinates is an array with the following coordinates:  **[longitud, latidud]**.
    :<json string persona: user URI with which the touchpoint will be linked

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

    :>json int id: unique internal touchpoint id
    :>json string code: unique touchpoint code, is the one used to refer to that touchpoint elsewhere in the API.
    :>json string platform: touchpoint platform, ``android``, ``ios``, ``ios_sandbox``, ``web`` or ``messenger``.
    :>json string persona: user linked to the touchpoint.
    :>json string model: touchpoint model description string
    :>json string version: app version description string
    :>json string sdk: sdk version description string.
    :>json string language: language description string
    :>json string country: country description string with 2 characters
    :>json GeoJSON position: touchpoint positioning where coordinates are defined as follows: **[longitud, latidud]**

.. note::

    If a user (field ``persona``) is not specified at the touchpoint creation
    request, the user will be created automatically and you'll get it with
    the creation response

.. note::

    If a country is not specified, the country will be automatically chosen
    based on the position, coordinates introduced. If there are not coordinates
    the country will be chosen based on the touchpoint IP.

.. _api-devices-update:

Touchpoint update
-----------------

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

    :<json string persona: user linked to the touchpoint.
    :<json bool disabled: boolean that shows if push notifications have been activated or not in the touchpoint.
    :<json string model: touchpoint model description string.
    :<json string version: app version description string.
    :<json string language: language description string with 2 characters.
    :<json GeoJSON position: touchpoint positioning where coordinates is an array with the following coordinates:  **[longitud, latidud]**.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

.. _api-devices-link:

Link a touchpoint with a user
-----------------------------

To link a user with a touchpoint you can make a call to ``/api/v1/devices/links/`` 
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

   :<json string device: touchpoint's URI that needs to be updated.
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

       The answer to this call is the touchpoint updated with the user
       information that is linked with.

.. _api-devices-unlink:

Unlink a touchpoint with a user
-------------------------------

The user will be unlinked with a touchpoint when he closes the session
in the app that is being integrated.

.. http:post:: /api/v1/devices/unlink/

   **Request example**:

   .. sourcecode:: http

       PATCH /api/v1/devices/unlink/ HTTP/1.1
       Content-Type: application/json

       {
           "device": "/api/v1/devices/9XzsNm/"
       }

   :<json string device: touchpoint's URI that needs to be updated.

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

       The answer to this call is the touchpoint updated with the information of a
       new non-identifiable persona that is linked with.

Touchpoint search
-----------------

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

There needs to be an explicit call to register a touchpoint access and ultimately, a
touchpoint activity.

.. http:post:: /api/v1/devices/(string:code)/access/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/devices/(string:code)/access/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
