.. _api-keys:

====
Keys
====

The system allows to storage **arbitrary information** in a key/value format
linked to the devices and the users.

Add key/value to device
-------------------------

This call creates a new *key/value* associated with the device specified in the call. If this
device has already a value associated to the same *key*, then this call updates the previous
value with the new one.

.. http:post:: /api/v1/keys/devices/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/keys/devices/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "kind": 2,
            "value": "var"
            "device": "/api/v1/devices/9XzsNm/"
        }

    :<json object key: JSON object with ``name`` key that shows the name of the key that is linked to,  **compulsory**.
    :<json int kind: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, 4: list.
    :<json string value: text value chain representation to be linked to the key.
    :<json string device: device linked to the value

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 6,
            "key": {
              "label": "foo",
              "term": "foo"
            },
            "kind": 2,
            "value": "var"
         }

    :>json int id: unique identifier for the key/value.
    :>json object key: JSON object with ``name`` key that shows the name of the key that is linked to, and ``term``, the name normalized.
    :>json int kind: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, 4: list.
    :>json string value: text value chain representation to be linked to the key.

Delete key/value from device
----------------------------

.. http:delete:: /api/v1/keys/devices/(int: id)/

    **Request example**:

    .. sourcecode:: http

        DELETE /api/v1/keys/devices/1/ HTTP/1.1


    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 204 No Content
        Content-Type: application/json

.. _api-keys-users:

Add key/value to user
-----------------------

This call creates a new *key/value* associated with the device specified in the call. If this
user has already a value associated to the same *key*, then this call updates the previous
value with the new one.

.. http:post:: /api/v1/keys/personas/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/keys/personas/ HTTP/1.1
        Content-Type: application/json

        {
            "key": {
                "label": "foo"
            },
            "kind": 2,
            "value": "var"
            "persona": "/api/v1/personas/9XzsNm/"
        }

    :<json object key: JSON object with ``name`` key that shows the name of the key that is linked to,  **compulsory**.
    :<json int type: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, :4 list.
    :<json string value: text value chain representation to be linked to the key.
    :<json string device: persona linked to the value

    .. note::

        If you are using keys as tags, there is no need to specify the value fields (``type`` and ``value``).

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 6,
            "key": {
              "label": "foo",
              "term": "foo"
            },
            "kind": 2,
            "value": "var"
         }

    :>json int id: unique identifier for the key/value.
    :>json object key: JSON object with ``name`` key that shows the name of the key that is linked to, and ``term``, the name normalized.
    :>json int kind: if it shows a linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, 4: list.
    :>json string value: text value chain representation to be linked to the key.

Delete key/value from user
--------------------------

.. http:delete:: /api/v1/keys/personas/(int: id)/

    **Request example**:

    .. sourcecode:: http

        DELETE /api/v1/keys/personas/1/ HTTP/1.1


    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 204 No Content
        Content-Type: application/json

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
