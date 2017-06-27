=====================
Documentación y ayuda
=====================

**10darts** es una plataforma de notificaciones push que maximiza la
fidelización de tus usuarios al mismo tiempo que minimiza el tiempo de
adaptación y gestión.

Damos soporte a las plataformas de **Android** e **iOS** proporcionando un
SDKs dedicados, una **API RESTful**, un panel de control online para
diseñar y enviar campañas de notificaciones push y un servicio de contenido
de **feeds** que permite el envío de campañas automáticas, evitando retrasos
en la comunicación del contenido con tus usuarios y ahorrando tiempo
a tu equipo de marketing.

.. note::

    Pronto se añadirá soporte para Facebook Messenger y Web Notifications.

Características en un vistazo
-----------------------------

- Seguimiento automático de la localización de los usuarios, gracias a nuestro **SDK**.
- Usuarios clasificados usando **keywords**
- Con el **content feed** puedes actualizar un feed RSS y **10darts** irá enviando automáticamente comunicaciones a tus usuarios para mantenerlos fieles a tu aplicación, tan rápido como empezar con un blog.
- Desde el **dashboard online** puedes lanzar campañas a tus usuarios, probar envíos segmentando por localización o *keywords* específicos.
- Puedes seguir los resultados en tiempo real (mensajes enviados, cuantos se van recibiendo, cuantos se van abriendo, etc.)

No olvides usar un buen título, emojis y una buena foto para comunicarte con tus usuarios.

Como empezar
------------

**Si eres desarrollador**

1. Generar un :ref:`Google Server API Key <faq-gcm>` y un iOS Push Certificate.
2. Configura el SDK: :ref:`Android <android-sdk-setup>` e :ref:`iOS <ios-sdk-setup>`.
3. Ahora puedes `crear tu primera campaña <https://10darts.com/app/notifications/create>`_

Para más información, consulta la :ref:`documentación <introduction>` y/o contacta con nosotros en it@10darts.com

**Si eres vendedor, community manage o el responsable de ganar la confianza de tus usuarios**

1. Espera hasta que el equipo de desarrollo haya integrado el SDK en tus aplicaciones
2. `Crea tu primera campaña <https://10darts.com/app/notifications/create>`_
3. Prueba un test A/B

Y para sacar más partido a la plataforma, aquí te dejamos el resto de la información. Si tienes dudas lánzanos un email a it@10darts.com.

.. toctree::
    :maxdepth: 2
    :caption: Conceptos básicos
    :hidden:

    overview/terminology
    overview/users
    overview/channels
    overview/campaigns
    overview/pushes
    overview/content_sources
    overview/options
    overview/statistics

.. toctree::
    :maxdepth: 2
    :caption: Tutoriales
    :hidden:

    tutorials/android
    tutorials/ios

.. toctree::
    :maxdepth: 2
    :glob:
    :caption: FAQ
    :hidden:

    faq/*

.. toctree::
   :maxdepth: 2
   :caption: Referencia
   :hidden:

   reference/android
   reference/ios
   reference/api
