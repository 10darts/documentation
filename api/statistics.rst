============
Estadísticas
============

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
