===============
Bulk operations
===============

Every bulk operation expects a list of elements to create or update using a single
request. Their responses are always empty.

Create users
------------

.. http:post:: /api/v1/bulk/personas/

  **Request example**:

  .. sourcecode:: http

      POST /api/v1/bulk/personas/ HTTP/1.1
      Content-Type: application/json

      [
          {
              "client_data": "...",
              "email": "...",
              "nested_device": {
                  "platform": "messenger",
                  "token": "..."
              }
          },
          {
              "client_data": "...",
              "email": "...",
              "nested_device": {
                  "platform": "messenger",
                  "token": "..."
              }
          }
      ]

  .. note::

    It uses the same parameters as seen in :ref:`API for users <api-users>`.

  **Response example**:

  .. sourcecode:: http

      HTTP/1.1 201 Created

Update users
------------

.. http:patch:: /api/v1/bulk/personas/

  **Request example**:

  .. sourcecode:: http

      PATCH /api/v1/bulk/personas/ HTTP/1.1
      Content-Type: application/json

      [
          {
              "code": "...",
              "client_data": "...",
              "email": "..."
          },
          {
              "code": "...",
              "client_data": "...",
              "email": "..."
          }
      ]

  .. note::

    It needs the field ``code`` to be able to update the user.

  **Response example**:

  .. sourcecode:: http

      HTTP/1.1 204 No Content
