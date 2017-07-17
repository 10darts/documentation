============
Segmentación
============

Listar segmentos de *devices*
-----------------------------

.. http:get:: /api/v1/segments/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/segments/devices/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
          "count": 4,
          "next": null,
          "previous": null,
          "results":  [
            {
              "id": 8,
              "name": "Dormant device",
              "kind": "dormant",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 6,
              "name": "Engaged device",
              "kind": "engaged",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 4,
              "name": "Passersby device",
              "kind": "passersby",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 2,
              "name": "Newbies device",
              "kind": "newbies",
              "first_seen_date": null,
              "audience": 0
            }
          ]
        }

Listar segmentos de *personas*
------------------------------

.. http:get:: /api/v1/segments/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        GET /api/v1/segments/personas/ HTTP/1.1

    **Ejemplo de respuesta**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
          "count": 4,
          "next": null,
          "previous": null,
          "results":  [
            {
              "id": 8,
              "name": "Dormant persona",
              "kind": "dormant",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 6,
              "name": "Engaged persona",
              "kind": "engaged",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 4,
              "name": "Passersby persona",
              "kind": "passersby",
              "first_seen_date": null,
              "audience": 0
            },
            {
              "id": 2,
              "name": "Newbies persona",
              "kind": "newbies",
              "first_seen_date": null,
              "audience": 0
            }
          ]
        }


Crear segmentos de *devices*
-----------------------------

.. http:post:: /api/v1/segments/devices/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/segments/devices/ HTTP/1.1
        Content-Type: application/json

        {
          "name": "Language with en and tag foo",
          "kind": "custom",
          "language": "en",
          "tags": [
            "foo"
          ]
        }

    :<json string language: idioma de los dispositivos que hay que seleccionar para el segmento
    :<json list platforms: plataformas que hay que seleccionar para el segmento (e.g: ``["android", "ios"]``)
    :<json string version: versión del cliente que deben de tener los dispositivos que hay que seleccionar para el segmento
    :<json string country: código de dos letras del país en el que tienen que estar registrados los devices  que hay que seleccionar para el segmento
    :<json list users: lista de usuarios que hay que seleccionar para el segmento
    :<json GeoJSON areas: ``MultiPolygon`` con las areas dónde se seleccionarán los devices para el segmento
    :<json GeoJSON center: ``Point`` que representa el centro de la circunferencia dónde se seleccionarán los devices para el segmento
    :<json int radius: radio de la circunferencia dónde se seleccionarán los devices para el segmento
    :<json list tags: lista de *keys* que han de tener los devices seleccionadas para el segmento
    :<json string client_data: cadena de texto con los valores de ``client_data`` de los devices seleccionadas para el segmento, separados por comas

Crear segmentos de *personas*
-----------------------------

.. http:post:: /api/v1/segments/personas/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/segments/personas/ HTTP/1.1
        Content-Type: application/json

        {
          "name": "Language with en and tag foo",
          "kind": "custom",
          "language": "en",
          "tags": [
            "foo"
          ]
        }

    :<json string language: idioma de las personas que hay que seleccionar para el segmento
    :<json list platforms: plataformas que hay que seleccionar para el segmento (e.g: ``["android", "ios"]``)
    :<json string version: versión del cliente que deben de tener los dispositivos que hay que seleccionar para el segmento
    :<json string country: código de dos letras del país en el que tienen que estar registrados las personas  que hay que seleccionar para el segmento
    :<json list users: lista de usuarios que hay que seleccionar para el segmento
    :<json GeoJSON areas: ``MultiPolygon`` con las areas dónde se seleccionarán las personas para el segmento
    :<json GeoJSON center: ``Point`` que representa el centro de la circunferencia dónde se seleccionarán las personas para el segmento
    :<json int radius: radio de la circunferencia dónde se seleccionarán las personas para el segmento
    :<json list tags: lista de *keys* que han de tener las personas seleccionadas para el segmento
    :<json string client_data: cadena de texto con los valores de ``client_data`` de las personas seleccionadas para el segmento, separados por comas
