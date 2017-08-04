============
Segmentation
============

*Device* segments listing
-------------------------

.. http:get:: /api/v1/segments/devices/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/segments/devices/ HTTP/1.1

    **Response example**:

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

*User* segments listing
-----------------------

.. http:get:: /api/v1/segments/personas/

    **Request example**:

    .. sourcecode:: http

        GET /api/v1/segments/personas/ HTTP/1.1

    **Response example**:

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

Create *device* segments
------------------------

.. http:post:: /api/v1/segments/devices/

    **Request example**:

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

    :<json string language: devices languages to be chosen for the segment.
    :<json list platforms: platforms to be chosen for the segment (e.g: ``["android", "ios"]``).
    :<json string version: app version to be chosen for the segment.
    :<json string country: 2 letters country code where users devices need to be registered to be chosen for the segment.
    :<json list users: user’s list to be chosen for the segment
    :<json GeoJSON areas: ``MultiPolygon`` including the selected areas where the segmented devices need to be
    :<json GeoJSON center: ``Point`` where is the center of the circle containing the devices in the segment
    :<json int radius: radius of the circle containing the devices in the segment
    :<json list tags: list of *keys* in the devices included in the segment
    :<json string client_data: string, separated by commas, with the ``client_data`` values of the devices included in the segment


Create *user* segments
----------------------

.. http:post:: /api/v1/segments/personas/

    **Request example**:

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

    :<json string language: devices languages to be chosen for the segment.
    :<json list platforms: platforms to be chosen for the segment (e.g: ``["android", "ios"]``).
    :<json string version: app version to be chosen for the segment.
    :<json string country: 2 letters country code where users devices need to be registered to be chosen for the segment.
    :<json list users: user’s list to be chosen for the segment
    :<json GeoJSON areas: ``MultiPolygon`` including the selected areas where the segmented devices need to be
    :<json GeoJSON center: ``Point`` where is the center of the circle containing the devices in the segment
    :<json int radius: radius of the circle containing the devices in the segment
    :<json list tags: list of *keys* in the users included in the segment
    :<json string client_data: string, separated by commas, with the ``client_data`` values of the devices included in the segment
