=====
Feeds
=====

Listar los feeds
----------------

.. http:GET:: /api/v1/feeds/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/feeds/ HTTP/1.1
        Content-Type: application/json

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
                    "code": "tO8idg",
                    "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss",
                    "last_check": null,
                    "title": "NASA Breaking News",
                    "disabled": false
                }
            ]
        }


Añadir un nuevo feed
--------------------

.. http:post:: /api/v1/feeds/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/feeds/ HTTP/1.1
        Content-Type: application/json

        {
            "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss"
        }

    **Ejemplo de respuesta**:

    .. sourcecode:: http


        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 1,
            "code": "tO8idg",
            "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss",
            "last_check": null,
            "title": "NASA Breaking News",
            "disabled": false
        }

Actualizar feed
---------------

.. http:patch:: /api/v1/feeds/(string: code)/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/feeds/tO8idg/ HTTP/1.1
        Content-Type: application/json

        {
            "disabled": true
        }

    **Ejemplo de respuesta**:

    .. sourcecode:: http


        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 1,
            "code": "tO8idg",
            "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss",
            "last_check": null,
            "title": "NASA Breaking News",
            "disabled": true
        }

Comprobar elementos del feed
----------------------------


.. http:post:: /api/v1/feeds/(string: code)/check/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/feeds/1/check/ HTTP/1.1
        Content-Type: application/json

        {
            "url": "..."
        }

    **Ejemplo de respuesta**:

    .. sourcecode:: http


        HTTP/1.1 200 OK

Conversor de feeds
------------------

.. http:GET:: /api/v1/feeds/(string: code)/converter/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/feeds/tO8idg/converter/ HTTP/1.1
        Content-Type: application/json

    **Ejemplo de respuesta**:

    .. sourcecode:: http


        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 1,
            "source": "http://testserver/api/v1/feeds/7K8yTm/",
            "message_template": "",
            "title_template": "",
            "areas": null,
            "center": null,
            "radius": null,
            "personas": [],
            "language": null,
            "platforms": [],
            "version": null,
            "country": null,
            "segment": null
        }
