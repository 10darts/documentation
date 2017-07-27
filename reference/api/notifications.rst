=============
Notifications
=============

Notifications listing
---------------------

.. http:get:: /api/v1/notifications/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/notifications/ HTTP/1.1

    :query search: search chain to search in title and message list.

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
                    "code": "w58Xar",
                    "message": "Hello notification!",
                    "destination_type": "news",
                    "destination_code": "1",
                    "language": null,
                    "platforms":null,
                    "version":null,
                    "areas": null,
                    "center": null,
                    "radius": null,
                    "users": [],
                    "weight": 0.0,
                    "audience": 1000
                }
            ]
        }

Crear una notificación
----------------------

.. http:post:: /api/v1/notifications/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/ HTTP/1.1
        Content-Type: application/json

        {
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "areas": {
                "type": "MultiPolygon",
                "coordinates": [[[[-7.6562499989342205, 44.234456132710235], [-9.589843748665476, 43.47393134649626], [-9.41406249868978, 42.184858646577936], [-6.162109374142225, 41.923820608660016], [-7.480468748958705, 36.6916365181006], [-5.986328124166709, 36.26761814542622], [-3.173828124558207, 36.47991736375511], [-1.1523437498396398, 36.832459720746144], [0.07812499998909536, 37.88036094145635], [3.1542968745608575, 38.63948675635851], [4.912109374316241, 39.4585485944873], [5.1757812492795265, 40.73589575563096], [3.4179687495242446, 40.60256849347135], [1.7480468747567084, 40.06659668657485], [1.9238281247322238, 40.60256849347135], [3.769531249475276, 41.530253217155526], [3.8574218744630464, 42.961528972912525], [-3.701171874484753, 44.10837564125035], [-7.6562499989342205, 44.234456132710235]]], [[[-18.422851559935623, 29.17744122976877], [-18.554687497417174, 27.592381992613287], [-17.851562497515275, 26.88910379027484], [-15.566406247832978, 27.045771285283998], [-13.85253906057193, 27.786944768839156], [-12.885742185706931, 29.292484429757632], [-12.929687498200181, 30.625009304010284], [-14.46777343548643, 29.941941665415605], [-14.775390622943677, 29.40739818807387], [-17.719726560033727, 29.52218218863575], [-18.422851559935623, 29.17744122976877]]]]
            }
        }

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/ HTTP/1.1
        Content-Type: application/json

        {
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "center": {
                "type": "Point",
                "coordinates": [100.0, 0.0]
            },
            "radius": 10000
        }

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/ HTTP/1.1
        Content-Type: application/json

        {
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "tags": [
                "medicos",
                "cardiólogos",
            ]
        }

    :<json string message: notification text, **compulsory**.
    :<json string title: notification title.
    :<json binary image: content image.
    :<json binary image: content image URL.
    :<json string deep_link: hyperlink to a web content.
    :<json string destination_type: user string that represents the notification link type of content.
    :<json string destination_code: unique code that represents the notification link type of content.
    :<json string language: devices languages that will receive the notifications to.
    :<json list platforms: platforms to send the notifications to (e.g: ``["android", "ios"]``).
    :<json string version: app version to send the notifications to.
    :<json string country: country code (two letters) where the devices need to be register to receive the notifications.
    :<json list personas: users list that will receive the notification.
    :<json GeoJSON areas: ``MultiPolygon``  including the area where the notification will be delivered.
    :<json GeoJSON center: ``Point`` that marks the center of the circle where the notification will be delivered.
    :<json int radius: circle radius where the notification will be delivered.
    :<json string distribution_algorithm: applicable distribution algorithm.
    :<json GeoJSON ripple_center: defines the center of the Geo-Ripple (only for Geo Ripple algorithm).
    :<json int ripple_initial_radius: defines the radius of the Geo-Ripple (only for Geo Ripple algorithm).
    :<json bool is_silent: defines a silent notification.
    :<json bool is_confirmation_needed: the notification requires a confirmation receipt.
    :<json bool is_sample: the notification will do a device random selection.
    :<json bool sample_size: defines the size of the random sample.
    :<json float weight: defines the *weight* of the content linked to the notification.
    :<json bool has_churn_check: defines that the notification will check the *churn*.
    :<json list tags: *keys8 list that the target users’ devices that receive the notifications have.
    :<json string tags_content_type: the tag filter can apply to a “device” or a “persona” – user. By default it’ll apply to a device.
    :<json string client_data: text chain with the ``client_data`` values of the users targeted in the notification separated by commas.

    .. warning::

        When the ``image`` field is included the request should go in *multipart* format.


    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "id": 1,
            "code": "w58Xar",
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "language": null,
            "platforms":null,
            "version":null,
            "areas": {
                "type": "MultiPolygon",
                "coordinates": [[[[-7.6562499989342205,44.234456132710235],[-9.589843748665476,43.47393134649626],[-9.41406249868978,42.184858646577936],[-6.162109374142225,41.923820608660016],[-7.480468748958705,36.6916365181006],[-5.986328124166709,36.26761814542622],[-3.173828124558207,36.47991736375511],[-1.1523437498396398,36.832459720746144],[0.07812499998909536,37.88036094145635],[3.1542968745608575,38.63948675635851],[4.912109374316241,39.4585485944873],[5.1757812492795265,40.73589575563096],[3.4179687495242446,40.60256849347135],[1.7480468747567084,40.06659668657485],[1.9238281247322238,40.60256849347135],[3.769531249475276,41.530253217155526],[3.8574218744630464,42.961528972912525],[-3.701171874484753,44.10837564125035],[-7.6562499989342205,44.234456132710235]]],[[[-18.422851559935623,29.17744122976877],[-18.554687497417174,27.592381992613287],[-17.851562497515275,26.88910379027484],[-15.566406247832978,27.045771285283998],[-13.85253906057193,27.786944768839156],[-12.885742185706931,29.292484429757632],[-12.929687498200181,30.625009304010284],[-14.46777343548643,29.941941665415605],[-14.775390622943677,29.40739818807387],[-17.719726560033727,29.52218218863575],[-18.422851559935623,29.17744122976877]]]]
            },
            "center": null,
            "radius": null,
            "users": [],
            "weight": 0.0,
            "audience": 1000
        }

    :>json int id: notification unique internal id.
    :>json string code: notification unique identifier code.
    :>json string message:  notification text.
    :>json binary image: content image.
    :>json binary image: content image URL.
    :>json string deep_link: hyperlink to a web content.
    :>json string destination_type: user string that represents the notification link type of content.
    :>json string destination_code: unique code that represents the notification link type of content.
    :>json string language: devices languages that will receive the notifications to.
    :>json list platforms: platforms to send the notifications to (e.g: ``["android", "ios"]``).
    :>json string version: app version to send the notifications to.
    :>json string country: country code (two letters) where the devices need to be register to receive the notifications.
    :>json list personas: users list that will receive the notification.
    :>json GeoJSON areas: ``MultiPolygon``  including the area where the notification will be delivered.
    :>json GeoJSON center: ``Point`` that marks the center of the circle where the notification will be delivered.
    :>json int radius: circle radius where the notification will be delivered.
    :>json string distribution_algorithm: applicable distribution algorithm.
    :>json GeoJSON ripple_center: defines the center of the Geo-Ripple (only for Geo Ripple algorithm).
    :>json int ripple_initial_radius: defines the radius of the Geo-Ripple (only for Geo Ripple algorithm).
    :>json bool is_silent: defines a silent notification.
    :>json bool is_confirmation_needed: the notification requires a confirmation receipt.
    :>json bool is_sample: the notification will do a device random selection.
    :>json bool sample_size: defines the size of the random sample.
    :>json float weight: defines the *weight* of the content linked to the notification.
    :>json bool has_churn_check: defines that the notification will check the *churn*.
    :>json list tags: *keys8 list that the target users’ devices that receive the notifications have.
    :>json string tags_content_type: the tag filter can apply to a “device” or a “persona” – user. By default it’ll apply to a device.
    :>json int audience: estimated users number receiving the notification.

Update notification
-------------------

.. http:patch:: /api/v1/notifications/(string:code)/

    **Request example**:

    .. sourcecode:: http

        PATCH /api/v1/notifications/(string:code)/ HTTP/1.1
        Content-Type: application/json

        {
            "weight": 12.0
        }

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Update notification audience
----------------------------------------

.. http:patch:: /api/v1/notifications/(string:code)/update_audience/

    **Request example**:

    .. sourcecode:: http

        PATCH /api/v1/notifications/(string:code)/update_audience/ HTTP/1.1
        Content-Type: application/json

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 1,
            "code": "w58Xar",
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "language": null,
            "platforms":null,
            "version":null,
            "areas": null,
            "center": null,
            "radius": null,
            "users": [],
            "weight": 0.0,
            "audience": 1000
        }

Send notification
-----------------

.. http:post:: /api/v1/notifications/(string:code)/send/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/(string:code)/send/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Retry notification
------------------

.. http:post:: /api/v1/notifications/(string:code)/retry/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/(string:code)/retry/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 2,
            "code": "w58Xar",
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "language": null,
            "platforms":null,
            "version":null,
            "areas": {
                "type": "MultiPolygon",
                "coordinates": [[[[-7.6562499989342205,44.234456132710235],[-9.589843748665476,43.47393134649626],[-9.41406249868978,42.184858646577936],[-6.162109374142225,41.923820608660016],[-7.480468748958705,36.6916365181006],[-5.986328124166709,36.26761814542622],[-3.173828124558207,36.47991736375511],[-1.1523437498396398,36.832459720746144],[0.07812499998909536,37.88036094145635],[3.1542968745608575,38.63948675635851],[4.912109374316241,39.4585485944873],[5.1757812492795265,40.73589575563096],[3.4179687495242446,40.60256849347135],[1.7480468747567084,40.06659668657485],[1.9238281247322238,40.60256849347135],[3.769531249475276,41.530253217155526],[3.8574218744630464,42.961528972912525],[-3.701171874484753,44.10837564125035],[-7.6562499989342205,44.234456132710235]]],[[[-18.422851559935623,29.17744122976877],[-18.554687497417174,27.592381992613287],[-17.851562497515275,26.88910379027484],[-15.566406247832978,27.045771285283998],[-13.85253906057193,27.786944768839156],[-12.885742185706931,29.292484429757632],[-12.929687498200181,30.625009304010284],[-14.46777343548643,29.941941665415605],[-14.775390622943677,29.40739818807387],[-17.719726560033727,29.52218218863575],[-18.422851559935623,29.17744122976877]]]]
            },
            "center": null,
            "radius": null,
            "users": [],
            "weight": 0.0
        }


Copy notification
-----------------

.. http:post:: /api/v1/notifications/(string:code)/copy/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/notifications/(string:code)/copy/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "id": 2,
            "code": "w58Xar",
            "message": "Hello notification!",
            "destination_type": "news",
            "destination_code": "1",
            "language": null,
            "platforms":null,
            "version":null,
            "areas": {
                "type": "MultiPolygon",
                "coordinates": [[[[-7.6562499989342205,44.234456132710235],[-9.589843748665476,43.47393134649626],[-9.41406249868978,42.184858646577936],[-6.162109374142225,41.923820608660016],[-7.480468748958705,36.6916365181006],[-5.986328124166709,36.26761814542622],[-3.173828124558207,36.47991736375511],[-1.1523437498396398,36.832459720746144],[0.07812499998909536,37.88036094145635],[3.1542968745608575,38.63948675635851],[4.912109374316241,39.4585485944873],[5.1757812492795265,40.73589575563096],[3.4179687495242446,40.60256849347135],[1.7480468747567084,40.06659668657485],[1.9238281247322238,40.60256849347135],[3.769531249475276,41.530253217155526],[3.8574218744630464,42.961528972912525],[-3.701171874484753,44.10837564125035],[-7.6562499989342205,44.234456132710235]]],[[[-18.422851559935623,29.17744122976877],[-18.554687497417174,27.592381992613287],[-17.851562497515275,26.88910379027484],[-15.566406247832978,27.045771285283998],[-13.85253906057193,27.786944768839156],[-12.885742185706931,29.292484429757632],[-12.929687498200181,30.625009304010284],[-14.46777343548643,29.941941665415605],[-14.775390622943677,29.40739818807387],[-17.719726560033727,29.52218218863575],[-18.422851559935623,29.17744122976877]]]]
            },
            "center": null,
            "radius": null,
            "users": [],
            "weight": 0.0
        }

Alternative notification creation
---------------------------------

You can create a content alternative for an already existing notification.
The push notification will be distributed evenly among all alternatives.


.. http:post:: /api/v1/content_alternatives/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/content_alternatives/ HTTP/1.1
        Content-Type: application/json

        {
            "message": "Hello alt notification!",
            "notification": "/api/v1/notifications/w58Xar/"
        }

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "message": "Hello alt notification!",
            "notification": "/api/v1/notifications/w58Xar/"
        }

    :>json string message: alternative notification text, **compulsory**.
    :>json string notification: alternative notification URL, **compulsory**.
    :>json binary image: alternative notification image.
    :>json binary image_url: alternative notification image URL.

    .. warning::

        If ``image`` field is included the request needs to be in *multipart* format.

Obtain content alternatives
---------------------------

.. http:get:: /api/v1/content_alternatives/?notification=(string: code)

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/content_alternatives/?notification=w58Xar HTTP/1.1

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
                    "id": 1,
                    "notification": "api/v1/notifications/w58Xar/",
                    "message": "Alternative!",
                    "deep_link": null,
                    "destination_type": null,
                    "destination_code": null,
                    "title": null,
                    "image": null,
                    "image_url": null
                }
            ]
        }


Notification distribution steps
-------------------------------

Para cada una de las notificaciones se pueden obtener los pasos que han dado para realizar la
distribución de esta.

.. http:get:: /api/v1/notifications/(string:code)/steps/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/steps/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count":5,
            "next":null,
            "previous":null,
            "results":[
                {
                    "id":2,
                    "notification":"http://testserver/api/v1/notifications/t6E0Hl/",
                    "order":1,
                    "previous":null,
                    "is_control":false,
                    "sent":false,
                    "ripple_radius":null,
                    "ripple_center":null
                },
                {
                    "id":3,
                    "notification":"http://testserver/api/v1/notifications/t6E0Hl/",
                    "order":2,
                    "previous":null,
                    "is_control":false,
                    "sent":false,
                    "ripple_radius":null,
                    "ripple_center":null
                },
                {
                    "id":4,
                    "notification":"http://testserver/api/v1/notifications/t6E0Hl/",
                    "order":3,
                    "previous":null,
                    "is_control":false,
                    "sent":false,
                    "ripple_radius":null,
                    "ripple_center":null
                },
                {
                    "id":5,
                    "notification":"http://testserver/api/v1/notifications/t6E0Hl/",
                    "order":4,
                    "previous":null,
                    "is_control":false,
                    "sent":false,
                    "ripple_radius":null,
                    "ripple_center":null
                },
                {
                    "id":6,
                    "notification":"http://testserver/api/v1/notifications/t6E0Hl/",
                    "order":5,
                    "previous":null,
                    "is_control":false,
                    "sent":false,
                    "ripple_radius":null,
                    "ripple_center":null
                }
            ]
        }

Relevance testing log
---------------------

The relevance testing logs can be obtained for a notification or for a distribution step.

.. http:get:: /api/v1/notifications/(string:code)/logs/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/logs/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count":5,
            "next":null,
            "previous":null,
            "results":[
                {
                    "id":5,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":4,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":3,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":2,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":1,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                }
            ]
        }

.. http:get:: /api/v1/steps/(int:id)/logs/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/steps/1/logs/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count":5,
            "next":null,
            "previous":null,
            "results":[
                {
                    "id":5,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":4,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":3,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":2,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                },
                {
                    "id":1,
                    "step":"http://testserver/api/v1/steps/1/",
                    "notification":"http://testserver/api/v1/notifications/sPAqib/",
                    "devices":0,
                    "sent":0,
                    "skipped":0,
                    "received":0,
                    "follows":0,
                    "errors":0,
                    "weight":0,
                    "is_relevant":false,
                    "created": "..."
                }
            ]
        }

Notification metrics
--------------------

.. http:get:: /api/v1/notifications/(string:code)/metrics/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/metrics/ HTTP/1.1

    :query start_datetime: starting date (eg: 2017-04-11T00:00:00).
    :query finish_datetime: ending date (eg: 2017-04-15T23:59:59).
    :query days: number of days between results.
    :query hours: number of hours between results.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "results": [
                {
                    "start_datetime": "2017-05-23T00:28:51.256213Z",
                    "sent_to": 991,
                    "skipped": 0,
                    "followed_by": 22,
                    "finish_datetime": "2017-05-23T01:28:51.256213Z",
                    "received_by": 227
                },
                {
                    "start_datetime": "2017-05-23T01:28:51.256213Z",
                    "sent_to": 0,
                    "skipped": 0,
                    "followed_by": 7,
                    "finish_datetime": "2017-05-23T02:28:51.256213Z",
                    "received_by": 36
                }
            ]
        }
