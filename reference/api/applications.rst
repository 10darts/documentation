============
Aplicaciones
============

Crear aplicación
----------------

.. http:post:: /api/v1/applications/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/applications/ HTTP/1.1
        Content-Type: application/json

        {
            "name": "MyApp",
            "platform": "GCM",
            "platform_credential": "..."
        }

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/applications/ HTTP/1.1
        Content-Type: application/json

        {
            "name": "MyApp",
            "platform": "APNS",
            "platform_principal": "...",
            "platform_credential": "..."
        }

    :<json string name: nombre de la aplicación, ha de ser único y sin espacios, **obligatorio**
    :<json string platform: tipo de plataforma, "GCM", "APNS" o "APNS_SANDBOX"
    :<json string platform_principal: para APNS y APNS_SANDBOX se corresponde con el certificado SSL, y no se aplica en GCM
    :<json string platform_credential: para APNS y APNS_SANDBOX se corresponde con el la clave privada, y con GCM se corresponde con la *API Key*

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 1,
            "name": "MyApp",
            "platform": "APNS",
            "platform_principal": "...",
            "platform_credential": "...",
            "platform_application_arn": "..."
        }

Listar aplicaciones
-------------------

.. http:get:: /api/v1/applications/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/applications/ HTTP/1.1


    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count": 1,
            "next": null,
            "previous": null,
            "results": [
                {
                    "id": 1,
                    "name": "MyApp",
                    "platform": "APNS",
                    "platform_principal": "...",
                    "platform_credential": "...",
                    "platform_application_arn": "..."
                }
            ]
        }

Borrar aplicaciones
-------------------

.. http:delete:: /api/v1/applications/(int: id)/

    **Ejemplo de petición**:

    .. sourcecode:: http

        DELETE /api/v1/applications/1/ HTTP/1.1


    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 204 No Content
        Content-Type: application/json
