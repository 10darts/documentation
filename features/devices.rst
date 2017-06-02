.. _devices:

============
Dispositivos
============

Un **dispositivo** a todo aquel aparato capaz de recibir notificaciones push.

Será la aplicación cliente, por medio del **SDK** o directamente usando el
**API**, la encargada de realizar las siguientes
acciones sobre el dispositivo:

- :ref:`Asociar el dispositivo a una persona. <api-devices-link>`
- :ref:`Actualizar las coordenadas de dispositivo. <api-devices-link>`
- :ref:`Actualizar datos del dispositivos, idioma, versión o el modelo. <api-devices-link>`
- :ref:`Registrar acceso del dispositivo a la aplicación. <api-devices-access>`

.. note::

    Es importante remarcar que el **registro de acceso** del dispositivo a la aplicación se realice
    de forma explícita desde el SDK, ya que esto asegura un control exacto de
    **cuando se considera que un usuario a accedido** a la aplicación, pudiendo
    adaptarse a las condiciones concretas de cada una de las plataformas disponibles.


Importar dispositivos
---------------------

Se pueden importar los dispositivos usando ficheros CSV, separados por comas, con las siguientes columnas:

- Token del dispositivo (string).
- Plataforma (entero, ``android`` para Android, ``ios`` para iOS).
- Posición (string). Ejemplo: ``RID=4326;POINT (-99.0099141 19.335117)``, donde las coordenadas son **longitud y latitud, en ese orden**.
- Idioma (string), código de dos caracteres del idioma, opcional.
- Version (string), opcional.
- Model (string), opcional.
- *Client data* (string), cualquier cadena única en el sistema del cliente que identifique al usuario del dispositivo.

Los campos opcionales se tienen que dejar en blanco pero ocupando su columna, en caso de que no
se quieran incluir.

.. note::
    Si el campo de *client data* es un email, y este tiene de dominio ``example.com``, entonces este será ignorado
    a la hora de darlo de alta en la base de datos.


Comprobación global de estado
-----------------------------

Para asegurar que los dispositivos en la base de datos son válidos, el sistema realizará una
**comprobación global del estado de estos cada 24 horas**, enviando una notificación push *silent*, que no será
mostrada por el dispositivo.

Para esta notificación no se solicitará la conformación de recepción por parte del dispositivo, sólo se
busca detectar aquellos dispositivos cuyo *token* para identificarlos en el envío de notificaciones push
ha dejado de ser válido, en cuyo caso se consideraría que el dispositivo ha dejado de tener la aplicación
del cliente instalada.
