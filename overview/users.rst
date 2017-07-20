.. _users:

========
Usuarios
========

Los usuarios  son **aquellos a los que se les asocia a un dispositivo**. Un
dispositivo solo puede tener una persona asociado al mismo tiempo.

Los usuarios se *identifican por un código único*, y son creados al dar de alta
un device en el sistema. También se pueden crear bajo demanda.

Segmentación
------------

El sistema soporta la creación de **segmentos** de usuarios o canales basados en diferentes
criterios. Por defecto, están siempre disponibles cuatro tipos de segmentos:

.. glossary::

    Rookies
        El segmento **Rookies** se corresponde con los usuarios que han usado
        tu aplicación solo un día en los últimos 14 días.

    Looky-Loos
        El segmento **Looky-Loos** se corresponde con los usuarios que solo
        han usado tu aplicación un día, y ha sido hace más de 14 días.

    Stars
        El segmento **Stars** se corresponde con los usuarios que han usado
        tu aplicación más de un día y al menos una vez en los últimos 14 días.

    Sleepers
        El segmento **Sleepers** se corresponde con los usuarios que han usado
        tu aplicación más de una vez, pero que no han vuelto a usarla desde
        hace más de 14 días, y menos de 28.

    Zombies
        El segmento **Zombies** se corresponde con los usuarios que no han
        usado tu aplicación desde hace más de 28 días.


Importar usuarios
-----------------

Se pueden importar usuarios usando ficheros CSV, separados por comas. Este proceso
sólo **actualizará los usuarios ya existentes en tu base de datos** que tengan
un valor de ``client_data`` asignado y que se corresponda con el valor proporcionado
en el fichero de importación.

Los valores de las columnas del fichero son:

- Valor del campo ``client_data`` (string).
- Nombre de usuario (string), opcional.
- Correo electrónico (string), opcional.
- Nombre (string), opcional.
- Apellidos (string), opcional.
- Posición (string). Ejemplo: ``RID=4326;POINT (-99.0099141 19.335117)``, donde las coordenadas son **longitud y latitud, en ese orden**, opcional.
- País (string), código de dos caracteres del país, opcional.
- Etiquetas (string), lista de etiquetas asociadas al usuario, separadas por ``;``. Ejemplo: ``tag1;tag2``. Opcional.

Los campos opcionales se tienen que dejar en blanco pero ocupando su columna, en caso de que no
se quieran incluir.
