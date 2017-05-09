========
Métricas
========

Cohorts
-------

.. http:get:: /api/v1/cohorts/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/cohorts/ HTTP/1.1

    :query origin_date: fecha de inicio de la semana donde los devices se han creado (eg: 2017-04-11)
    :query target_date: fecha de inicio de la semana donde analizar la actividad de los devices creados (eg: 2017-04-11)

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "cohort": 9.345
        }

Métricas
--------

.. http:get:: /api/v1/metrics/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/metrics/ HTTP/1.1

        :query start_date: fecha de comienzo (eg: 2017-04-11)
        :query finish_date: fecha de fin (eg: 2017-04-15)
        :query step: número de días que pasan entre resultado y resultado

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "results": [
                {
                    "start_date": "2017-05-09",
                    "finish_date": "2017-05-10",
                    "notifications": 10,
                    "sent_to": 0,
                    "errors_with": 0,
                    "received_by": 0,
                    "skipped": 0,
                    "followed_by": 0,
                    "unique_devices": 0,
                    "devices": 0,
                    "personas": 0,
                    "pushes_by_device_mean": 0.0,
                    "pushes_by_device_variance": 0.0
                }
            ]
        }
