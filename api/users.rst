=====
Users
=====

En el sistema se diferencia los diferentes perfiles de usuario usando los recursos ``users`` para los
**clientes**, y ``personas`` para los **usuarios**. Se utiliza el termino ``persona`` del inglés,
que hace referencia a la personalidad de alguien según la percibe otra persona, ya que en este recurso se guarda
los datos que se tienen desde la perspectiva del **cliente**.

Usuario actual
--------------

.. http:get:: /api/v1/users/me/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/users/me/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 3947,
            "code": "DVS7eE",
            "email": "client1@example.com",
            "first_name": "",
            "last_name": ""
        }

.. http:patch:: /api/v1/users/me/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/users/me/ HTTP/1.1
        Content-Type: application/json

        {
            "email": "...",
        }

    :<json string email: email del usuario
    :<json string first_name: nombre del usuario
    :<json string last_name: apellido/s del usuario
    :<json string password: contraseña del usuario


    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 3947,
            "code": "DVS7eE",
            "email": "client1@example.com",
            "first_name": "",
            "last_name": ""
        }


Registro de persona
-------------------

.. http:post:: /api/v1/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/personas/ HTTP/1.1
        Content-Type: application/json

        {
            "email": "...",
            "position": {
                "type": "Point",
                "coordinates": [-123.0208, 44.0489]
            }
        }

    :<json string username: nombre único del usuario, según quiera el cliente
    :<json string email: email del usuario
    :<json string first_name: nombre del usuario, si se sabe
    :<json string last_name: apellido/s del usuario, si se saben
    :<json string device: URI del device al que se quiere asociar la persona
    :<json GeoJSON position: coordenadas de la persona, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 3947,
            "code": "DVS7eE",
            "username": "client1",
            "email": "client1@example.com",
            "first_name": "",
            "last_name": ""
        }

    :>json int id: id interno único del usuario
    :>json string code: código único del usuario, es el que se usa al hacer referencia a este en el resto del API
    :>json string username: nombre único del usuario, según quiera el cliente
    :>json string email: email del usuario
    :>json string first_name: nombre del usuario, si se sabe
    :>json string last_name: apellido/s del usuario, si se saben
    :>json GeoJSON position: coordenadas de la persona, donde ``coordinates`` es un array con las coordenadas de la siguiente forma: **[longitud, latidud]**

    La llamada puede dar error si:

    - Se introducen datos inválidos, como un email inválido en el campo de email
    - Si el correo electrónico de la **persona** ya está registrado para el **cliente**
    - Si el ``username`` de la **persona** ya está registrado para el **cliente**

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
            "email": [
                "Email already exists."
            ]
        }

    .. sourcecode:: http

        HTTP/1.1 400 Bad Request
        Content-Type: application/json

        {
            "username": [
                "Username already exists."
            ]
        }


Actualizar persona
------------------

.. http:patch:: /api/v1/personas/(string:code)/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/personas/DVS7eE/ HTTP/1.1
        Content-Type: application/json

        {
            "email": "..."
        }

    :<json string email: email del usuario, **obligatorio**
    :<json string first_name: nombre del usuario, si se sabe
    :<json string last_name: apellido/s del usuario, si se saben

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK


Buscar persona
--------------

Se puede buscar una persona por el username o por el email.

.. http:get:: /api/v1/personas/?(string:field)=(string:email)

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/personas/?email=client1@example.com HTTP/1.1

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/personas/?username=client1 HTTP/1.1

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
                    "code": "IECwPN",
                    "email": "client1@example.com",
                    "first_name": "",
                    "last_name": ""
                }
            ]
        }
