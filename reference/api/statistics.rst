=========
Analytics
=========

Cohorts
-------

.. http:get:: /api/v1/cohorts/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/cohorts/ HTTP/1.1

    :query origin_date: fecha de inicio de la semana donde los devices se han creado (eg: 2017-04-11)
    :query target_date: fecha de inicio de la semana donde analizar la actividad de los devices creados (eg: 2017-04-11)

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "cohort": 9.345
        }

Analytics
---------

.. http:get:: /api/v1/metrics/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/metrics/ HTTP/1.1

    :query start_datetime: fecha de comienzo (eg: 2017-04-11T00:00:00)
    :query finish_datetime: fecha de fin (eg: 2017-04-15T23:59:59)
    :query days: número de días que pasan entre resultado y resultado
    :query hours: número de horas que pasan entre resultado y resultado
    :query weeks: número de semanas que pasan entre resultado y resultado
    :query minutes: número de minutos que pasan entre resultado y resultado
    :query months: número de meses que pasan entre resultado y resultado
    :query notifications: lista de códigos de notificaciones sobre los que se quiere obtener estadísticas (e.g. ``notifications=MJ6H6Y,OsFKVH``)
    :query kind: filtrar por tipo de notifications, ``manual`` para las manuales y ``automatic`` para las automáticas
    :query accumulated: indicar a ``true`` para que los datos que se muestren sean los totales acumulados hasta la fecha indicada
    :query fields: lista de campos que se quiere incluir en la respuesta, por defecto, se incluyen todos (e.g. ``notifications=unique_devices,accesses,devices,alive_devices,active_devices,notifications,personas,alive_personas``)

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "results": [
                {
                    "datetime": "2017-05-10T00:00:00",
                    "notifications": 10,
                    "sent_to": 0,
                    "errors_with": 0,
                    "received_by": 0,
                    "skipped": 0,
                    "followed_by": 0,
                    "unique_devices": 0,
                    "devices": 0,
                    "alive_devices": 0,
                    "active_devices": 0,
                    "personas": 0,
                    "alive_personas": 0,
                    "accesses": 0
                }
            ]
        }
