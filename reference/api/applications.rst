============
Applications
============

Create an application
---------------------

.. http:post:: /api/v1/applications/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/applications/ HTTP/1.1
        Content-Type: application/json

        {
            "name": "MyApp",
            "platform": "GCM",
            "platform_credential": "..."
        }

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/applications/ HTTP/1.1
        Content-Type: application/json

        {
            "id": 1,
            "name": "MyApp",
            "platform": "APNS",
            "platform_principal": "...",
            "platform_credential": "..."
        }

    :<json int id: unique id of the application
    :<json string name: name of the application, it should be unique and without spaces, **compulsory**
    :<json string platform: type of the platform, ``GCM``, ``APNS``, ``APNS_SANDBOX``, ``WEB`` or ``MESSENGER``
    :<json string platform_principal: for ``APNS`` and ``APNS_SANDBOX`` it corresponds with the SSL certificate, and is not used in other types
    :<json string platform_credential: for ``APNS`` and ``APNS_SANDBOX`` it corresponds with the private key, and with ``GCM`` it correspondes with the *API Key*
    :<jsons string page_access_token: for ``MESSENGER`` it corresponds with the page acccess token

    **Response example**:

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

List applications
-----------------

.. http:get:: /api/v1/applications/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/applications/ HTTP/1.1


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
                    "id": 1,
                    "name": "MyApp",
                    "platform": "APNS",
                    "platform_principal": "...",
                    "platform_credential": "...",
                    "platform_application_arn": "..."
                }
            ]
        }

Delete applications
-------------------

.. http:delete:: /api/v1/applications/(int: id)/

    **Request example**:

    .. sourcecode:: http

        DELETE /api/v1/applications/1/ HTTP/1.1


    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 204 No Content
        Content-Type: application/json
