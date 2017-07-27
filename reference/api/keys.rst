====
Keys
====

The system allows to storage **arbitrary information** in a key/value format
linked to the devices and the users.

Add value / key to device
-------------------------

.. http:post:: /api/v1/keys/devices/

    **Request example**:

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


    :<json object key: JSON object with ``name`` key that shows the name of the key that is linked to,  **compulsory**.
    :<json int type: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool.
    :<json string value: text value chain representation to be linked to the key.
    :<json string device: device linked to the value

Add value / key to user
-----------------------

.. http:post:: /api/v1/keys/personas/

    **Request example**:

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

    :<json object key: JSON object with ``name`` key that shows the name of the key that is linked to,  **compulsory**.
    :<json int type: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool.
    :<json string value: text value chain representation to be linked to the key.
    :<json string device: persona linked to the value

    .. note::

        En ambas llamadas, se puede omitir los campos relacionados con el valor (``type`` y ``value``) para
        almacenar claves como si fueran etiquetas al uso.

Keys suggestion
---------------

.. http:get:: /api/v1/keys/personas/?query=(string: query)

    For ``keys`` only associated to ``personas``.


    **Request example**:

    .. sourcecode:: http

        GET /api/v1/keys/personas/?query=foo HTTP/1.1

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

    For ``keys`` linked only to ``devices``.

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/keys/devices/?query=foo HTTP/1.1

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

    For any ``keys`` registered by the user.

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/keys/?query=foo HTTP/1.1

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
                    "key": {
                        "label": "foo",
                        "term": "foo"
                    },
                    "kind": 2,
                    "value": null
                }
            ]
        }
