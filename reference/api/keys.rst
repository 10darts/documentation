====
Keys
====

El sistema permite almacenar **información arbitraria** en formato de clave/valor asociada
tanto a dispositivos como a usuarios.

Añadir clave/valor a un dispositivo
-----------------------------------

.. http:post:: /api/v1/keys/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/keys/devices/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "type": 2,
            "value": "var"
            "device": "/api/v1/devices/9XzsNm/"
        }


    :<json object key: objeto JSON con la clave ``name`` indicando el nombre de la clave que se quiere asociar, **obligatorio**
    :<json int type: en caso de indicar un valor asociado, el tipo de este valor, siendo 0: float, 1: int, 2: string, 3: bool
    :<json string value: representación en cadena de texto del valor que se quiere asociar a la key
    :<json string device: referencia al dispositivo al que se quiere asociar el valor

Añadir clave/valor a un usuario
-------------------------------

.. http:post:: /api/v1/keys/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/keys/personas/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "type": 2,
            "value": "var"
            "persona": "/api/v1/personas/9XzsNm/"
        }


    :<json object key: objeto JSON con la clave ``name`` indicando el nombre de la clave que se quiere asociar, **obligatorio**
    :<json int type: en caso de indicar un valor asociado, el tipo de este valor, siendo 0: float, 1: int, 2: string, 3: bool
    :<json string value: representación en cadena de texto del valor que se quiere asociar a la key
    :<json string users: referencia al usuario al que se quiere asociar el valor

.. note::
    En ambas llamadas, se puede omitir los campos relacionados con el valor (``type`` y ``value``) para
    almacenar claves como si fueran etiquetas al uso.

Sugerencia de keys
------------------

.. http:get:: /api/v1/keys/personas/?query=(string: query)

    Para ``keys`` que estén asignadas solo a ``personas``.

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/keys/personas/?query=foo HTTP/1.1

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
                    "key": {
                        "label": "foo",
                        "term": "foo"
                    },
                    "kind": 2,
                    "value": null
                }
            ]
        }

.. http:get:: /api/v1/keys/devices/?query=(string: query)

    Para ``keys`` que estén asignadas solo a ``devices``.

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/keys/devices/?query=foo HTTP/1.1

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
                    "key": {
                        "label": "foo",
                        "term": "foo"
                    },
                    "kind": 2,
                    "value": null
                }
            ]
        }

.. http:get:: /api/v1/keys/?query=(string: query)

    Para cualquier ``keys`` que el usuario haya registrado.

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/keys/?query=foo HTTP/1.1

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
                    "key": {
                        "label": "foo",
                        "term": "foo"
                    },
                    "kind": 2,
                    "value": null
                }
            ]
        }
