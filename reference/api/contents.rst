==========
Contenidos
==========

Crear conversor
---------------

Un conversor es un objeto que define las reglas que se usarán para crear una
notificación cuando se cree un **nuevo contenido de una fuente en concreto.**

.. http:post:: /api/v1/converters/

    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/converters/ HTTP/1.1
        Content-Type: application/json

        {
            "source": "/api/v1/feeds/tO8idg/"
        }

    :<json string source: URI de la fuente del contenido del que se quiere hacer el conversor.
    :<json string message_template: plantilla para usar en el cuerpo de la notificación
    :<json string title_template: plantilla para usar en el título de la notificación
    :<json GeoJSON areas: ``MultiPolygon`` con las areas donde la notificación ha de ser efectiva
    :<json GeoJSON center: ``Point`` que representa el centro de la circunferencia donde la notificación es efectiva
    :<json int radius: radio de la circunferencia donde la notificación es efectiva
    :<json list platforms: plataformas a la que enviar la notificación (e.g: ``["android", "ios"]``)
    :<json string language: idioma de los dispositivos a los que enviar la notificación
    :<json string version: versión del cliente que deben de tener los dispositivos a los que se envía la notificación
    :<json string country: código de dos letras del país en el que tienen que estar registrados los devices a los que se quiere mandar la notificación
    :<json list tags: lista de *keys* que han de tener los devices a los que se quiere enviar la notificación
    :<json string distribution_algorithm: define el algoritmo de distribución
    :<json GeoJSON ripple_center: define el centro del efecto Geo Ripple (solo para algoritmo de Geo Ripple)
    :<json int ripple_initial_radius: define el radio por defecto del efecto Geo Ripple (solo para algoritmo de Geo Ripple)

Actualizar conversor
--------------------

.. http:patch:: /api/converters/(int:id)/
    **Ejemplo de petición**:

    .. sourcecode:: http

        POST /api/v1/converters/ HTTP/1.1
        Content-Type: application/json

        {
            "tags": [
                "foo",
                "var"
            ]
        }
