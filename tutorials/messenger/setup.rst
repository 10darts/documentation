====================================
Facebook Messenger Integration Guide
====================================

Create application
------------------

**10darts Facebook Messenger Channel (FMC)** allows any business Facebook page to
deliver messages to their Facebook users.

First thing you have to do is to create your Facebook application in `https://developers.facebook.com/apps/ <https://developers.facebook.com/apps/>`_. This application will request the
required permits and will be user to set up the webhooks.

Until Facebook grants you the required permits, during development and
integration phases, you can test your application users that have signed up in
the application Role.

Add Product > Messenger
-----------------------

Once you have created your application, you need to add the *Messenger*
product to your application.

.. figure:: /_static/images/messenger/add_messenger.png
  :alt: Add Product > Messenger

Token Generation
----------------

When setting up the Messenger, under the Token Generation section, you’ll
have to select the Facebook page you’ll use to send your messages and generate
a Page Access Token.

.. figure:: /_static/images/messenger/generate_token.png
  :alt: Generate token

Keep your token in a safe place once it’s been generated, you’ll have to insert it in “Page Token” to create your Facebook Messenger application in **10darts**.

.. figure:: /_static/images/messenger/app.png
  :alt: App

Webhooks
--------

Once you have created the application in **10darts** you need to set up
Facebook Messenger Webhooks going back to to the Facebook page application
you’ve just created, under the following section

.. figure:: /_static/images/messenger/webhook.png
  :alt: Webhooks

.. note::

    If you want to send automatic responses the webhook messages need to get
    to your own address by adding the field ``redirect_to`` as a URL
    parameter and 10darts will forward to that address the Facebook
    message as it is.

Once all events and the webhook address are registered you only need to
indicate Facebook which Facebook Page will register the events.


.. figure:: /_static/images/messenger/page.png
  :alt: Page

  You only need to select the Facebook Page in the *Select Page* option within
  the dropdown menu.

Application Review
------------------

You first need the ``pages_messaging``, authorization so you can reply a
user who’s contacted you in the previous 24 hours.

In case you want to reply your user after that 24 hours window, you need
Facebook to grant you a ``pages_messaging_subscriptions`` permission. In that
case, your messages need to fall in any of the following categories:

- **News**, so you can inform your users about breaking news in sports, finance, business, weather, traffic, etc.
- **Productivity**, so you can send information on events, agenda, tasks, etc.
- **Personalized follow up information**, so you can send personalized information on fitness, health, wellbeing and finance.

Facebook does not allow to send ads or any short of promotional message.

Once those permits are approved and the webhooks are set up, any user who starts a conversation with the linked Facebook business page will be registered in the platform and you’ll be able to send him push notifications through **10darts**.
