============
Estadísticas
============

Estadísticas diarias
--------------------

.. http:get:: /api/v1/statistics/daily/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/statistics/daily/ HTTP/1.1

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
                    "date": "2017-04-11",
                    "sent": 0,
                    "skipped": 0,
                    "errors": 0,
                    "received": 0,
                    "followed": 0,
                    "unique_devices": 0,
                    "pushes_by_device_mean": 0.0,
                    "pushes_by_device_variance": 0.0,
                    "devices": 0,
                    "total_devices": 0,
                    "users": 0,
                    "total_users": 0
                }
            ]
        }


Estadísticas semanales
----------------------

.. http:get:: /api/v1/statistics/weekly/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/statistics/weekly/ HTTP/1.1

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
                    "date": "2017-04-11",
                    "sent": 0,
                    "skipped": 0,
                    "errors": 0,
                    "received": 0,
                    "followed": 0,
                    "unique_devices": 0,
                    "pushes_by_device_mean": 0.0,
                    "pushes_by_device_variance": 0.0,
                    "devices": 0,
                    "total_devices": 0,
                    "users": 0,
                    "total_users": 0
                }
            ]
        }


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
