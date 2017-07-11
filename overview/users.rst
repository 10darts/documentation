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
