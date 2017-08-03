.. _content_sources:

============
Content Feed
============

10darts can automatically generate push notification campaigns directly
from your content feed avoiding you the hustle of duplicating your job in
posting and uploading content, information, products, etc. in your platform
and then having to repeat the process to create your push campaign.

In 10darts you can have one or more content feed sources targeting
different geographies, categories, etc.

Also, you can use different content sources to feed the automatic push
notification campaigns as long as you can extract an Internet content
referenced by a URI and include it in push notification

Your content can be geolocated as long as it includes a reference to a
specific location.

10darts supports `Django templates <https://docs.djangoproject.com/en/1.11/ref/templates/>`_, that you can check for further
information.

The most common standard and easy to implement content feed is the
RSS/Atom.

An example of a RSS Content Feed:

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

    We can use RSS with geo-location, information linked to items, `GeoRSS <https://es.wikipedia.org/wiki/GeoRSS>`_,
    this will be linked to the generated content and allow 10darts to apply
    smart geo distribution base on the Geo-Ripple Effect algorithm.
