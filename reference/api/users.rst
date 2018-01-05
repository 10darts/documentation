.. _api-users:

=====
Users
=====

User registry
-------------

.. http:post:: /api/v1/personas/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/personas/ HTTP/1.1
        Content-Type: application/json

        {
            "client_data": "...",
            "position": {
                "type": "Point",
                "coordinates": [-123.0208, 44.0489]
            }
        }

    :<json string client_data: client’s user unique system identifier
    :<json string username: unique name of the user, as clients defines
    :<json string email: user email
    :<json string first_name: user first name, if known
    :<json string last_name: user last name if known
    :<json string device: device URI to be linked to the user
    :<json object nested_device: device object, to create it and link to the user
    :<json string country: country code (two letters) to identify the user
    :<json GeoJSON position: persona coordinates, where ``coordinates`` are the following array: **[longitude, latitude]**

    .. note::

      See :ref:`docs <api-devices>` for ``nested_device`` field.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 3947,
            "code": "DVS7eE",
            "client_data": "client1",
            "username": "client1",
            "email": "client1@example.com",
            "first_name": "",
            "last_name": ""
        }

    :>json int id: unique inside user id
    :>json string code: unique user code that is used to refer to him in the rest of the API
    :>json string client_data: client’s user unique system identifier
    :>json string username: unique name of the user, as clients defines
    :>json string email: user email
    :>json string first_name: user first name, if known
    :>json string last_name: user last name if known
    :>json string device: device URI to be linked to the user
    :>json object nested_device: device object, to create it and link to the user
    :>json string country: country code (two letters) to identify the user
    :>json GeoJSON position: persona coordinates, where ``coordinates`` are the following array: **[longitude, latitude]**

    The call can generate an error if::

    - If you input invalid data, such as invalid email in the email field
    - If the **persona** ``client_data`` has already been registered

    .. note::

      See :ref:`docs <api-devices>` for ``nested_device`` field.

    **Response examples**:

    .. sourcecode:: http

        HTTP/1.1 400 Bad Request
        Content-Type: application/json

        {
            "email": [
                "Enter a valid email address."
            ]
        }

    .. sourcecode:: http

        HTTP/1.1 400 Bad Request
        Content-Type: application/json

        {
            "client_data": [
                "Client data already exists."
            ]
        }


Update user
-----------

.. http:patch:: /api/v1/personas/(string:code)/

    **Request example**:

    .. sourcecode:: http

        PATCH /api/v1/personas/DVS7eE/ HTTP/1.1
        Content-Type: application/json

        {
            "email": "..."
        }

    :<json string client_data: client’s user unique system identifier
    :<json string username: unique name of the user, as clients defines
    :<json string email: user email
    :<json string first_name: user first name, if known
    :<json string last_name: user last name if known
    :<json string device: device URI to be linked to the user
    :<json object nested_device: device object, to create it and link to the user
    :<json string country: country code (two letters) to identify the user
    :<json GeoJSON position: persona coordinates, where ``coordinates`` are the following array: **[longitude, latitude]**

    .. note::

      See :ref:`docs <api-devices>` for ``nested_device`` field.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Search user
-----------

You can search a persona by the email or username.

.. http:get:: /api/v1/personas/?(string:field)=(string:value)

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/personas/?client_data=client1 HTTP/1.1

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/personas/?email=client1@example.com HTTP/1.1

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
                    "code": "IECwPN",
                    "client_data": "client1",
                    "email": "client1@example.com",
                    "first_name": "",
                    "last_name": ""
                }
            ]
        }

User devices
------------

.. http:get:: /api/v1/personas/(string:code)/devices/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/personas/IECwPN/devices/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "count": 1,
            "next": null,
            "previous": null,
            "results": [
                {
                    "token": "...",
                    "platform": "android",
                    "position": {
                    "type": "Point",
                        "coordinates": [-123.0208, 44.0489]
                    }
                }
            ]
        }
