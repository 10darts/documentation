=====
Feeds
=====

Feed listing
------------

.. http:GET:: /api/v1/feeds/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/feeds/ HTTP/1.1
        Content-Type: application/json

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
                    "code": "tO8idg",
                    "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss",
                    "last_check": null,
                    "title": "NASA Breaking News",
                    "disabled": false
                }
            ]
        }


Add a new feed
--------------

.. http:post:: /api/v1/feeds/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/feeds/ HTTP/1.1
        Content-Type: application/json

        {
            "url": "https://www.nasa.gov/rss/dyn/breaking_news.rss"
        }

    **Response example**:

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

Update feed
-----------

.. http:patch:: /api/v1/feeds/(string: code)/

    **Request example**:

    .. sourcecode:: http

        PATCH /api/v1/feeds/tO8idg/ HTTP/1.1
        Content-Type: application/json

        {
            "disabled": true
        }

    **Response example**:

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

Check feed elements
-------------------


.. http:post:: /api/v1/feeds/(string: code)/check/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/feeds/1/check/ HTTP/1.1
        Content-Type: application/json

        {
            "url": "..."
        }

    **Response example**:

    .. sourcecode:: http


        HTTP/1.1 200 OK

Feed converter
--------------

.. http:GET:: /api/v1/feeds/(string: code)/converter/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/feeds/tO8idg/converter/ HTTP/1.1
        Content-Type: application/json

    **Response example**:

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
