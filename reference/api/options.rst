=======
Options
=======

Puedes consular :ref:`aquí <options>` la lista de opciones disponibles
para ser personalizadas.

Options lists
-------------

.. http:get:: /api/v1/options/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/options/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
          "count": 1,
          "next": null,
          "previous": null,
          "results":  [
            {
              "name": "fake_push_active",
              "value": 0,
              "type": 1,
              "is_list": false,
              "public_name": "Activate/deactivate fake push notifications"
            }
          ]
        }

Update option
-------------

.. http:patch:: /api/v1/options/(string: name)/

    **Request example**:

    .. sourcecode:: http

        PATCH /api/v1/options/fake_push_active/ HTTP/1.1
        Content-Type: application/json

        {
          "value": "1"
        }

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
