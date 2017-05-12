.. _introduction:

============
Introducción
============

El proyecto **Onpublico Backstage** se puede definir como un *sistema de difusión de contenido inteligente*,
en donde dicha difusión se realiza mediante el uso de *notificaciones push* a dispositivos móviles iOS y Android.

El sistema completo consta de dos partes muy diferenciadas, la plataforma de *Software as a Service* (Saas), que
incluye un *backend* API público y un panel de gestión, y el *SDK* para aplicaciones móviles.

En este documento nos vamos a centrar principalmente en la definición del sistema de SaaS.

Terminología
------------

Resumen de los términos que se van a utilizar durante el documento. Cada uno de ellos será explicado
en profundidad en sus correspondientes secciones.

.. glossary::

    :ref:`Cliente <users-clients>`
        Los **clientes** son aquellas entidades que pueden identificarse en el sistema, y tienen asociados a ellos el contenido (dispositivos, notificaciones, etc.)

    :ref:`Persona <users-simple>`
        Las **personas** no pueden identificarse en el sistema, pero son aquellos que usan un dispositivo en particular.

    :ref:`Dispositivo <devices>`
        Llamaremos **dispositivo** a todo aquel aparato capaz de recibir notificaciones push.

    :ref:`Notificación <notifications>`
        Una **notificación** se define como un mensaje, definido por un texto y un *destino* creado por un *usuario premium*,
        en el que ha establecido una serie de condiciones para definir a cuantos dispositivos va a llegar el mensaje,
        tales como el idioma del dispositivo, versión del cliente, y sobretodo el *área de entrega* de este.

    :ref:`Push <pushes>`
        Un **push** en el sistema simboliza *un envío en concreto* que ha sido realizado a una serie de *dispositivos*.
