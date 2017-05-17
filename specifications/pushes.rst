.. _pushes:

======
Pushes
======

Un **push** en el sistema simboliza *un envío en concreto* que ha sido realizado a una serie de
*dispositivos*.


La responsabilidad de crear los pushes recae **exclusivamente** en las notificaciones, por lo que
no se pueden crear vía API. Sin embargo, la confirmación de entrega o la apertura del push se ha
de indicar sobre el push enviado, utilizando las llamadas del API correspondientes.

Pushes *leídos*
---------------

Se marca un push como *leído* cuando el usuario decide marcarlo como tal. Esto no
tiene efecto para las estadísticas, ya que el usuario podría marcar un push
como leído aunque no lo haya abierto.

Solo afecta al contador de ``badge`` que se envía en cada push. Es responsabilidad
del lado cliente (la aplicación) marcar un push como leído.

Pushes *seguidos*
-----------------

Los pushes *seguidos* o *abiertos*, son aquellos sobre los que el usuario a pulsado
para acceder al contenido.

Es responsabilidad del lado cliente (la aplicación) marcar un push como seguido.

Pushes *recibidos*
------------------

Los pushes *recibidos* son aquellos que la aplicación ha marcado como recibidos. Se
asume que si el contenido del push tiene el valor de ``cfm`` a 1 se necesita
confirmación.

Es responsabilidad del lado cliente (la aplicación) marcar un push como recibido.

Pushes *silenciosos*
--------------------

Los pushes *silenciosos* son aquellos que se envían pero la aplicación no muestra
ningún mensaje al usuario.

Estructura del push
-------------------

**Android**

.. code-block:: json

    {
        "data": {
            "id": "...",
            "message": "...",
            "title": "...",
            "badge": 1,
            "dst": "...",
            "dsc": "...",
            "img": "...",
            "cfm": 1,
            "sil": 0,
            "org": "10d",
            "ctm": {
                "field": "value"
            }
        }
    }

**iOS**

.. code-block:: json

    {
        "aps": {
            "alert": {
                "title": "...",
                "body": "...",
            },
            "sound": "default",
            "badge": 1
        },
        "id": "...",
        "title": "...",
        "dst": "...",
        "dsc": "...",
        "img": "...",
        "cfm": 1,
        "sil": 0,
        "org": "10d",
        "ctm": {
            "field": "value"
        }
    }

- ``id`` se corresponde con el código único del push, que ha de ser usado para identificarlo a la hora de marcarlo como recibido o como abierto.
- ``dst`` campo arbitrario de texto que debería identificar el **tipo de destino** que la aplicación cliente debería de abrir al pulsar en la notificación.
- ``dsc`` campo arbitrario de texto que debería identificar de forma única el **contenido del destino** que la aplicación cliente debería de abrir al pulsar en la notificación.
- ``cfm`` campo que indica si el push requiere la **confirmación de entrega**, con valor de ``1`` si lo necesita y ``0`` en caso contrario.
- ``sil`` campo que indica si el push **es silencioso**, con valor de ``1`` si lo es y ``0`` en caso contrario.
- ``ctm`` campo que contiene un objeto con datos personalizados del usuario (**opcional**).
- ``img`` URL de la imagen que se usará para el contenido enriquecido de la notificación (**opcional**).
- ``org`` campo que siempre contiene el valor ``10d``, para comprobar que el push venga desde la plataforma.

Para las notificaciones *silent* en iOS, el cuerpo del mensaje push se modifica quedando de la siguiente manera:

.. code-block:: json

    {
        "aps": {
            "content-available": 1
        },
        "id": "...",
        "dst": "...",
        "dsc": "...",
        "cfm": 1,
        "sil": 1,
        "org": "10d"
    }

Además, para que el cliente sea compatible con estas notificaciones, ha de ser configurado tal como se indica
en la `documentación de Apple <https://developer.apple.com/library/content/documentation/NetworkingInternet/Conceptual/RemoteNotificationsPG/CreatingtheNotificationPayload.html#//apple_ref/doc/uid/TP40008194-CH10-SW8>`_.
