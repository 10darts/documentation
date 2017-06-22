.. _content_sources:

====================
Fuentes de contenido
====================

El sistema está preparado para el uso de diferentes fuentes de contenido para, a partir de las cuales,
crear una campaña asociada a este contenido.

De cualquier *fuente de contenido* se tiene que poder extraer un contenido genérico, que sería cualquier contenido de
Internet que pueda ser referenciado por una URI y que sea susceptible de ser notificado a los usuarios de la
plataforma.

Además, el contenido puede tener una referencia a una posición geográfica a la que este haga referencia.

Conversor de contenido
----------------------

A cada una de las fuentes de contenido se puede especificar un **conversor de contenido**, que es el encargado de
dado un contenido en concreto de una fuente en concreto, se encarga de crear la **campaña** asociada
a este, aplicando unas reglas de segmentación y/o envío definidas por el usuario.

Un *conversor de contenido* permite especificar para cada una de las fuentes de contenido:

- Plantilla de mensaje
- Plantilla de título
- Áreas donde distribuir la campaña
- Centro y radio de donde distribuir la campaña (excluyente con las áreas)
- Lista de usuarios a los que distribuir la campaña
- Idioma al que distribuir la campaña
- Plataforma a la que distribuir la campaña
- Versión a la que distribuir la campaña
- Segmento al que distribuir la campaña

.. _converter_templates:

Plantillas
^^^^^^^^^^

Las plantillas para mensajes y título de la campaña permiten la personalización del
contenido de la campaña. A la hora de renderizar la plantilla, se tienen disponibles
las siguientes variables, que vienen del contenido:

- ``title``, que se corresponde con el título del contenido
- ``body``, que se corresponde con el cuerpo del contenido, sin etiquetado
- ``url``, la URL asociada al contenido

Para hacer referencia a las variables, se tienen que usar entre ``{}``. Ejemplo::

    Nueva campaña titulada {{ title }} con este contenido: {{ body }} en la siguiente URL {{ url }}


En general, se soporta el lenguaje de plantillas de Django, ver su
`documentación <https://docs.djangoproject.com/en/1.11/ref/templates/>`_ para una referencia completa.

Feeds
-----

El tipo de contenido principal son los feeds RSS/Atom. Cada feed de RSS viene identificado por su URL y
por el *cliente* al que este pertenece. Además de esto, cada feed tiene un periodo concreto y
propio de refresco, por defecto establecido en 2 horas.

Ejemplo de RSS:

.. code-block:: xml

    <rss version="2.0">
        <channel>
            <title>Liftoff News</title>
            <link>http://liftoff.msfc.nasa.gov/</link>
            <description>Liftoff to Space Exploration.</description>
            <language>en-us</language>
            <pubDate>Tue, 10 Jun 2003 04:00:00 GMT</pubDate>
            <lastBuildDate>Tue, 10 Jun 2003 09:41:01 GMT</lastBuildDate>
            <docs>http://blogs.law.harvard.edu/tech/rss</docs>
            <generator>Weblog Editor 2.0</generator>
            <managingEditor>editor@example.com</managingEditor>
            <webMaster>webmaster@example.com</webMaster>
            <item>
                <title>Star City</title>
                <link>http://liftoff.msfc.nasa.gov/news/2003/news-starcity.asp</link>
                <description>How do Americans get ready to work with Russians aboard the International Space Station? They take a crash course in culture, language and protocol at Russia's &lt;a href="http://howe.iki.rssi.ru/GCTC/gctc_e.htm"&gt;Star City&lt;/a&gt;.</description>
                <pubDate>Tue, 03 Jun 2003 09:39:21 GMT</pubDate>
                <guid>http://liftoff.msfc.nasa.gov/2003/06/03.html#item573</guid>
            </item>
            <item>
                <description>Sky watchers in Europe, Asia, and parts of Alaska and Canada will experience a &lt;a href="http://science.nasa.gov/headlines/y2003/30may_solareclipse.htm"&gt;partial eclipse of the Sun&lt;/a&gt; on Saturday, May 31st.</description>
                <pubDate>Fri, 30 May 2003 11:06:42 GMT</pubDate>
                <guid>http://liftoff.msfc.nasa.gov/2003/05/30.html#item572</guid>
            </item>
            <item>
                <title>The Engine That Does More</title>
                <link>http://liftoff.msfc.nasa.gov/news/2003/news-VASIMR.asp</link>
                <description>Before man travels to Mars, NASA hopes to design new engines that will let us fly through the Solar System more quickly.  The proposed VASIMR engine would do that.</description>
                <pubDate>Tue, 27 May 2003 08:37:32 GMT</pubDate>
                <guid>http://liftoff.msfc.nasa.gov/2003/05/27.html#item571</guid>
            </item>
            <item>
                <title>Astronauts' Dirty Laundry</title>
                <link>http://liftoff.msfc.nasa.gov/news/2003/news-laundry.asp</link>
                <description>Compared to earlier spacecraft, the International Space Station has many luxuries, but laundry facilities are not one of them.  Instead, astronauts have other options.</description>
                <pubDate>Tue, 20 May 2003 08:56:02 GMT</pubDate>
                <guid>http://liftoff.msfc.nasa.gov/2003/05/20.html#item570</guid>
            </item>
        </channel>
    </rss>

.. note::
    Si la fuente tiene información geográfica asociada a los *items*, `GeoRSS <https://es.wikipedia.org/wiki/GeoRSS>`_,
    esta se asocia al contenido generado.
