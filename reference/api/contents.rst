=======
Content
=======

Create converter
----------------

Un conversor es un objeto que define las reglas que se usarán para crear una
notificación cuando se cree un **nuevo contenido de una fuente en concreto.**

.. http:post:: /api/v1/converters/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/converters/ HTTP/1.1
        Content-Type: application/json

        {
            "source": "/api/v1/feeds/tO8idg/"
        }

    :<json string source: content source URI from which the convertor will be created.
    :<json string message_template:  template to be used in the notification message.
    :<json string title_template:  template to be used in the notification title.
    :<json GeoJSON areas: ``MultiPolygon`` with the areas where the notification must be effective.
    :<json GeoJSON center: ``Point`` determines the notification area circumference center.
    :<json int radius:  determines the notification area circumference radius.
    :<json list platforms:  platforms to send the notifications to (e.g: ``["android", "ios"]``).
    :<json string language: languages to send the notifications to.
    :<json string version: app version to send the notifications to.
    :<json string country:  country code (two letters) where the users need to be register to receive the notifications.
    :<json list tags: *keys* list that target users’ devices receiving the notification have.
    :<json string distribution_algorithm: defines the distribution algorithm.
    :<json GeoJSON ripple_center: defines the center of the Geo Ripple effect (only for Geo Ripple algorithm).
    :<json int ripple_initial_radius: defines the radius of the Geo Ripple effect (only for Geo Ripple algorithm).

Update converter
----------------

.. http:patch:: /api/converters/(int:id)/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/converters/ HTTP/1.1
        Content-Type: application/json

        {
            "tags": [
                "foo",
                "var"
            ]
        }
