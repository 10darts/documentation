===========
Docs & Help
===========

10darts software
----------------

**10darts** is a communications platform that allows you to
**maximize your users’ engagement** while minimizing your **time requirements**.

Using Machine Learning algorithms, 10darts improves the communications
with your users applying behavior predictions and profile clustering.

10darts software includes the following tools:

1. Facebook Messenger setup.
2. Web Notifications, :ref:`Android <android-sdk-reference>` and :ref:`iOS <ios-sdk-reference>` **SDK**.
3. **RESTful** :ref:`API <api>`.
4. **Campaign Manager** for `creating and managing manual campaigns <https://10darts.com/app/notifications>`_ , `seetting up and monitoring the results of your automatic campaigns <https://10darts.com/app/notifications/automatic>`_ and `API personalized push notification campaigns <https://10darts.com/app/notifications/transactional>`_.
5. **Data Manager System** that gathers keeps and analyzes your users’ interactions data to boost user engagement and retention.

10darts Main Features
---------------------

.. glossary::

    Autopost from external source
      This feature allows you to select a RSS feed and automatically sends its content to your users as soon as the source updates. You can configure the target and the distribution method for each source.

    Trigger campaigns
      In 10darts you can set up campaigns that will be sent when the user behaves in pre-determined manner, i.e.: accesses for the first time, has not accessed in certain number of days, becomes a heavy user, etc. Each of these events is a trigger campaign that affects one user at time based on a trigger event. For Facebook Messenger you can design a conversational flow and adding Quick Reply buttons you can easily qualify each user into a specific segment automatically saving and storing their responses.

    Autonomous A/B Testing
        Once you've set up the A/B testing messages, why waste your time waiting on the results to take an action 10darts autonomously identifies and expands on the fly the most relevant message for your users.

    Autonomous Segmentation
        Using AI, 10darts' clusters and segments your user base to maximize their engagement with customized push notifications.

    Smart distribution: Geo Ripple-Effect ®
        10darts' Geo-Ripple algorithms autonomously expand your push notifications throughout your user base creating a cascade effect that maximizes the interested audience of your notifications. This algorithm is especially useful when you manage and produce local relevant information, from job vacancies in local businesses to local news.

    Content Relevance
        10darts uses content relevance score calculations to autonomously determine the relevant audience of a specific content out of your entire user base.

Get started
-----------
.. glossary::

    If you are a developer
        1. For Facebook Messenger go to: :ref:`Integration Guide <messenger-sdk-setup>`.
        2. For Web Notifications got to: :ref:`Setup Guide <web-sdk-setup>`.
        3. Fot iOs and Android:

          1. Configure your application in `10darts Dashboard <https://10darts.com/app/applications>`_. In case you don’t have a :ref:`Google Server API Key <faq-gcm>` and / or an :ref:`iOS Push Certificate <ios_push_certificate>` follow the instructions on the FAQ.
          2. Set up the SDK: :ref:`Android <android-sdk-setup>` and :ref:`iOS <ios-sdk-setup>`.

        😃 Congratulations, you are ready to launch your `first campaign <https://10darts.com/app/notifications>`_.

    If you are a marketer, community manager or just do not code

        1. For Facebook Messenger go to: :ref:`Integration Guide <messenger-sdk-setup>`
        1. For Web, iOS and Android, please have somebody integrate 10darts SDK in your app/web.
        2. Launch your `first campaign <https://10darts.com/app/notifications>`_.

For further info keep reading these Docs & the Help section. Feel free to
contact us on it@10darts.com if you need any help.

.. toctree::
    :maxdepth: 2
    :caption: Basic Concepts
    :hidden:

    overview/users
    overview/segments
    overview/channels
    overview/targeting
    overview/distribution
    overview/campaigns
    overview/pushes
    overview/content_sources
    overview/options
    overview/statistics
    overview/triggers

.. toctree::
    :maxdepth: 2
    :caption: Tutorials
    :hidden:

    tutorials/android
    tutorials/ios
    tutorials/web
    tutorials/messenger

.. toctree::
    :maxdepth: 2
    :glob:
    :caption: FAQ
    :hidden:

    faq/*

.. toctree::
   :maxdepth: 2
   :caption: Reference
   :hidden:

   reference/android
   reference/ios
   reference/web
   reference/api
