====
Apps
====

Create app
----------------

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
            "name": "MyApp",
            "platform": "APNS",
            "platform_principal": "...",
            "platform_credential": "..."
        }

    :<json string name: app name, must be unique and with no spaces, **compulsory**
    :<json string platform: platform type, «GCM», «APNS» or «APNS_SANDBOX»
    :<json string platform_principal: for APNS and APNS_SANDBOX it is equivalent to SSL certificate, and it does not apply GCM
    :<json string platform_credential: for APNS y APNS_SANDBOX it is equivalent to private key and with GCM and with *API Key*

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

App listing
-----------

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

Delete apps
-----------

.. http:delete:: /api/v1/applications/(int: id)/

    **Request example**:

    .. sourcecode:: http

        DELETE /api/v1/applications/1/ HTTP/1.1


    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 204 No Content
        Content-Type: application/json
