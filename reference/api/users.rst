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

    :<json string client_data: identificador único en el sistema del cliente al que pertenece el usuario
    :<json string username: nombre único del usuario, según quiera el cliente
    :<json string email: email del usuario
    :<json string first_name: nombre del usuario, si se sabe
    :<json string last_name: apellido/s del usuario, si se saben
    :<json string device: URI del device al que se quiere asociar la persona
    :<json string country: código de dos letras que identifica el país de la persona
    :<json GeoJSON position: coordenadas de la persona, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

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

    :>json int id: id interno único del usuario
    :>json string code: código único del usuario, es el que se usa al hacer referencia a este en el resto del API
    :>json string client_data: identificador único en el sistema del cliente al que pertenece el usuario
    :>json string username: nombre único del usuario, según quiera el cliente
    :>json string email: email del usuario
    :>json string first_name: nombre del usuario, si se sabe
    :>json string last_name: apellido/s del usuario, si se saben
    :>json string country: código de dos letras que identifica el país de la persona
    :>json GeoJSON position: coordenadas de la persona, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

    La llamada puede dar error si:

    - Se introducen datos inválidos, como un email inválido en el campo de email
    - Si el ``client_data`` de la **persona** ya está registrado para el **cliente**

    **Ejemplo de respuestas**:

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

    :<json string client_data: identificador único en el sistema del cliente al que pertenece el usuario
    :<json string email: email del usuario
    :<json string username: nombre de usuario del usuario
    :<json string first_name: nombre del usuario, si se sabe
    :<json string last_name: apellido/s del usuario, si se saben
    :<json string country: código de dos letras que identifica el país de la persona

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Search user
-----------

Se puede buscar una persona por el username o por el email.

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

Devices de una persona
----------------------

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
