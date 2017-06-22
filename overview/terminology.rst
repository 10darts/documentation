.. _introduction:

============
Terminología
============

El sistema **10darts** se puede definir como un *sistema de difusión de contenido inteligente*,
en donde dicha difusión se realiza mediante el uso de *campañas* basadas en
*notificaciones push* a dispositivos móviles iOS y Android.

El sistema completo consta de dos partes muy diferenciadas, la plataforma de *Software as a Service* (SaaS), que
incluye un *backend* API público y un panel de gestión, y el *SDK* para aplicaciones móviles.

Resumen de los términos que se van a utilizar durante el documento. Cada uno de ellos será explicado
en profundidad en sus correspondientes secciones.

.. glossary::

    :ref:`Canales <channels>`
        Los **canales** a todo aquel aparato o aplicación que es capaz de recibir notificaciones push.

    :ref:`Usuario <users>`
        Los **usuarios** son aquellos que usan un canal en particular. Un usuario puede tener asociados
        varios canales al mismo tiempo.

    :ref:`Campañas <campaigns>`
        Una **campaña** se define como un mensaje, definido por un texto y un *destino*,
        en el que ha establecido una serie de condiciones para definir a cuantos usuarios va a llegar el mensaje,
        tales como el idioma del canal, versión de la aplicación cliente, y/o el *área de entrega* de este.

    :ref:`Push <pushes>`
        Un **push** en el sistema simboliza *un envío en concreto* que ha sido realizado a una serie de *canales*.
