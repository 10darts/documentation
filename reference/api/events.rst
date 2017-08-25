======
Events
======

The type of events is specified using an integer valuer:

* ``0`` for float
* ``1`` for integer
* ``2`` for string

List default events kinds
-------------------------

.. http:get:: /api/v1/event_kinds/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/event_kinds/ HTTP/1.1

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 200 OK
        Content-Type: application/json

        {
            "count": 2,
            "next": null,
            "previous": null,
            "results": [
                {
                    "name":"create",
                    "type":null,
                    "description":"Boolean value to specify if the persona has created a content"
                },
                {
                    "name":"purchase",
                    "type":null,
                    "description":"Boolean value to specify if the persona has made a purchase"
                },
                {
                    "name":"session",
                    "type":1,
                    "description":"Duration in seconds from when the user opens the app since it closes it"
                },
                {
                    "name":"shared",
                    "type":null,
                    "description":"Boolean value to specify if the persona has shared a content"
                },
                {
                    "name":"sing-up",
                    "type":null,
                    "description":"Boolean value to specify if the persona has signed up"
                },
                {
                    "name":"step",
                    "type":0,
                    "description":"The persona has made a displacement of the indicated meters"
                }
            ]
        }

Create events
-------------

.. http:post:: /api/v1/events/

    **Request example**:

    .. sourcecode:: http

        POST /api/v1/events/ HTTP/1.1
        Content-Type: application/json

        {
            "push": "/api/v1/pushes/DcK0ac/",
            "device": "/api/v1/devices/oCvRFb/",
            "kind": "/api/v1/event_kinds/session/",
            "value": "300"
        }

    :<json string push: resource URI of the push related with the event, *optional*.
    :<json string device: resource URI of the device that has produced the event.
    :<json string kind: resource URI of the event kind, use ``null`` to create a custom event.
    :<json string value: value related to the event, *optional*.
    :<json string name: name of the event, for custom events, *optional*.
    :<json string type: type of the event, for custom events, *optional*.

    **Response example**:

    .. sourcecode:: http

        HTTP/1.1 201 Created
        Content-Type: application/json

        {
            "code": "0pActp",
            "device": "http://testserver/api/v1/devices/cNFwDv/",
            "notification": "http://testserver/api/v1/notifications/8mvykG/",
            "position": {
                "type": "Point",
                "coordinates": [
                    -0.3774,
                    39.4742
                ]
            },
            "kind": "http://testserver/api/v1/event_kinds/session/",
            "value": "300",
            "name": null,
            "type": 2
        }

    :>json string notification: resource URI of the notification related with the event.
    :>json string device: resource URI of the device that has produced the event.
    :>json string kind: resource URI of the event kind, use ``null`` to create a custom event.
    :>json string value: value related to the event.
    :>json string name: name of the event, for custom events.
    :>json string type: type of the event, for custom events.
    :>json GeoJSON position: position of the device in the moment when the event was registered.
