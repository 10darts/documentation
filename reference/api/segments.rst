============
Segmentación
============

Listar segmentos de *devices*
-----------------------------

.. http:get:: /api/v1/segments/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/segments/devices/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
          "count": 4,
          "next": null,
          "previous": null,
          "results":  [
            {
              "id": 8,
              "name": "Dormant device",
              "kind": "dormant",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 6,
              "name": "Engaged device",
              "kind": "engaged",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 4,
              "name": "Passersby device",
              "kind": "passersby",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 2,
              "name": "Newbies device",
              "kind": "newbies",
              "first_seen_date": null,
              "audience": 0
            }
          ]
        }

Listar segmentos de *personas*
------------------------------

.. http:get:: /api/v1/segments/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/segments/personas/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
          "count": 4,
          "next": null,
          "previous": null,
          "results":  [
            {
              "id": 8,
              "name": "Dormant persona",
              "kind": "dormant",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 6,
              "name": "Engaged persona",
              "kind": "engaged",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 4,
              "name": "Passersby persona",
              "kind": "passersby",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 2,
              "name": "Newbies persona",
              "kind": "newbies",
              "first_seen_date": null,
              "audience": 0
            }
          ]
        }
