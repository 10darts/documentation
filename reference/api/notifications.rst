=============
Notifications
=============

Listar notificaciones
----------------------

.. http:get:: /api/v1/notifications/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/notifications/ HTTP/1.1

    :query search: cadena para realizar una búsqueda sobre el listado sobre el título y el mensaje

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

    **Ejemplo de petición**:

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

    **Ejemplo de petición**:

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

    **Ejemplo de petición**:

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

    :<json string message: texto de la notificación **obligatorio**
    :<json string deep_link: enlace profundo
    :<json string destination_type: cadena única que representa el tipo del contenido de destino de la notificación
    :<json string destination_code: código único que identifica el contenido de destino de la notificación
    :<json string language: idioma de los dispositivos a los que enviar la notificación
    :<json list platforms: plataformas a la que enviar la notificación (e.g: ``["android", "ios"]``)
    :<json string version: versión del cliente que deben de tener los dispositivos a los que se envía la notificación
    :<json string country: código de dos letras del país en el que tienen que estar registrados los devices a los que se quiere mandar la notificación
    :<json list users: lista de usuarios a los que la notificación debe ser enviada
    :<json GeoJSON areas: ``MultiPolygon`` con las areas donde la notificación ha de ser efectiva
    :<json GeoJSON center: ``Point`` que representa el centro de la circunferencia donde la notificación es efectiva
    :<json int radius: radio de la circunferencia donde la notificación es efectiva
    :<json string distribution_algorithm: define el algoritmo de distribución
    :<json GeoJSON ripple_center: define el centro del efecto Geo Ripple (solo para algoritmo de Geo Ripple)
    :<json int ripple_initial_radius: define el radio por defecto del efecto Geo Ripple (solo para algoritmo de Geo Ripple)
    :<json bool is_silent: marcar la notificación como silenciosa
    :<json bool is_confirmation_needed: indicar que la notificación requiere confirmación
    :<json bool is_sample: indicar que la notificación hará una selección de devices aleatoria
    :<json bool sample_size: indica el tamaño de la muestra aleatoria
    :<json float weight: indica el *peso* del contenido asociado a la notificación
    :<json bool has_churn_check: indicar que la notificación hará la comprobación de *churn*
    :<json list tags: lista de *keys* que han de tener los devices a los que se quiere enviar la notificación
    :<json string tags_content_type: puede ser "device" o "persona", para seleccionar si los filtros de tags se aplican a dispositivos o a usuarios, por defecto se toma el valor de "device"
    :<json string client_data: cadena de texto con los valores de ``client_data`` de las personas a las que se quiere enviar la notificación, separados por comas

    .. warning::

        Si se incluye el campo ``image`` la petición ha de ir en formato *multipart*.

    **Ejemplo de respuesta**:

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

    :>json int id: identificador interno único de la notificación
    :>json string code: identificador único de la notificación
    :>json string message: texto de la notificación
    :>json binary image: imagen para usar en el contenido
    :>json string deep_link: enlace profundo
    :>json string destination_type: cadena única que representa el tipo del contenido de destino de la notificación
    :>json string destination_code: código único que identifica el contenido de destino de la notificación
    :>json string language: idioma de los dispositivos a los que enviar la notificación
    :>json list platforms: plataformas a la que enviar la notificación (e.g: ``["android", "ios"]``)
    :>json string version: versión del cliente que deben de tener los dispositivos a los que se envía la notificación
    :>json string country: código de dos letras del país en el que tienen que estar registrados los devices a los que se quiere mandar la notificación
    :>json list users: lista de usuarios a los que la notificación debe ser enviada
    :>json GeoJSON areas: ``MultiPolygon`` con las areas donde la notificación ha de ser efectiva
    :>json GeoJSON center: ``Point`` que representa el centro de la circunferencia donde la notificación es efectiva
    :>json int radius: radio de la circunferencia donde la notificación es efectiva
    :>json bool is_ripple: activar el 'ripple effect' para esta notificación
    :>json bool is_silent: marcar la notificación como silenciosa
    :>json bool is_confirmation_needed: indicar que la notificación requiere confirmación
    :>json bool is_sample: indicar que la notificación hará una selección de devices aleatoria
    :>json bool sample_size: indica el tamaño de la muestra aleatoria
    :>json float weight: indica el *peso* del contenido asociado a la notificación
    :>json list tags: lista de *keys* que han de tener los devices a los que se quiere enviar la notificación
    :>json string tags_content_type: puede ser "device" o "persona", para seleccionar si los filtros de tags se aplican a dispositivos o a usuarios
    :>json int audience: número estimado de destinatarios de la notificación

Actualizar notificación
-----------------------

.. http:patch:: /api/v1/notifications/(string:code)/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/notifications/(string:code)/ HTTP/1.1
        Content-Type: application/json

        {
            "weight": 12.0
        }

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK


Actualizar audiencia de la notificación
----------------------------------------

.. http:patch:: /api/v1/notifications/(string:code)/update_audience/

    **Ejemplo de petición**:

    .. sourcecode:: http

        PATCH /api/v1/notifications/(string:code)/update_audience/ HTTP/1.1
        Content-Type: application/json

    **Ejemplo de respuesta**:

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

Enviar notificación
-------------------

.. http:post:: /api/v1/notifications/(string:code)/send/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/notifications/(string:code)/send/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK

Reintentar notificación
-----------------------

.. http:post:: /api/v1/notifications/(string:code)/retry/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/notifications/(string:code)/retry/ HTTP/1.1

    **Ejemplo de respuesta**:

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

Crear una alternative a una notificación
----------------------------------------

Se puede crear una alternativa de contenido para una notificación ya creada. Los pushes se distribuirán de
manera uniforme entre todas las alternativas.

.. http:post:: /api/v1/content_alternatives/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/content_alternatives/ HTTP/1.1
        Content-Type: application/json

        {
            "message": "Hello alt notification!",
            "notification": "/api/v1/notifications/w58Xar/"
        }

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "message": "Hello alt notification!",
            "notification": "/api/v1/notifications/w58Xar/"
        }

    :>json string message: texto alternativo de la notificación, **obligatorio**
    :>json string notification: URI de la notificación de la cual se quiere crear la alternativa, **obligatorio**
    :>json binary image: imagen para usar en la alternativa

    .. warning::
        Si se incluye el campo ``image`` la petición ha de ir en formato *multipart*.

Obtener alternativas de contenido
---------------------------------

.. http:get:: /api/v1/content_alternatives/?notification=(string: code)

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/content_alternatives/?notification=w58Xar HTTP/1.1

    **Ejemplo de respuesta**:

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


Pasos de distribución de una notificación
-----------------------------------------

Para cada una de las notificaciones se pueden obtener los pasos que han dado para realizar la
distribución de esta.

.. http:get:: /api/v1/notifications/(string:code)/steps/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/steps/ HTTP/1.1

    **Ejemplo de respuesta**:

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

Log de comprobaciones de relevancia
-----------------------------------

Los logs de comprobación de relevancia se pueden obtener para una notificación o para un paso de
distribución.

.. http:get:: /api/v1/notifications/(string:code)/logs/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/logs/ HTTP/1.1

    **Ejemplo de respuesta**:

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

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/steps/1/logs/ HTTP/1.1

    **Ejemplo de respuesta**:

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

Métricas de la notificación
---------------------------

.. http:get:: /api/v1/notifications/(string:code)/metrics/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/notifications/sPAqib/metrics/ HTTP/1.1

    :query start_datetime: fecha de comienzo (eg: 2017-04-11T00:00:00)
    :query finish_datetime: fecha de fin (eg: 2017-04-15T23:59:59)
    :query days: número de días que pasan entre resultado y resultado
    :query hours: número de horas que pasan entre resultado y resultado

    **Ejemplo de respuesta**:

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
