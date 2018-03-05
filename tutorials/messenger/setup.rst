.. _messenger-sdk-setup:
====================================
Facebook Messenger Integration Guide
====================================

Please make sure you **complete all the following 5 steps in the appropriate order** so your integration
goes smoothly and without problems.

1. Create application
---------------------

**10darts Facebook Messenger Channel (FMC)** allows any business Facebook page to
deliver messages to their Facebook users.

First thing you have to do is create your Facebook application in `https://developers.facebook.com/apps/ <https://developers.facebook.com/apps/>`_. This application will request the
permits needed and will be used to set up the webhooks.

Until Facebook grants you the required permits, during development and
integration phases, you can test your application with users that have signed up in
the application Role.

2. Add Product > Messenger
--------------------------

Once you have created your application, you need to add the *Messenger*
product.

.. figure:: /_static/images/messenger/add_messenger.png
  :alt: Add Product > Messenger

3. Token Generation
-------------------

When setting up the Messenger, under the Token Generation section, you will
have to select the Facebook page you will use to send your messages and generate
a Page Access Token.

.. figure:: /_static/images/messenger/generate_token.png
  :alt: Generate token

Keep your token in a safe place once it has been generated, you will have to insert it in “Page Token” to create your Facebook Messenger application in **10darts**.

.. figure:: /_static/images/messenger/app.png
  :alt: App

4. Webhooks
-----------

Once you have created the application in **10darts** you need to set up
Facebook Messenger Webhooks going back to the Facebook page application
you have just created, under the following section

.. figure:: /_static/images/messenger/webhook.png
  :alt: Webhooks

You will find the *Callback URL* and the *Verify Token* that Facebook is asking you to
for in 10darts Applications under the fields *Webhook URL* and *Webhook verification token*.

.. note::

    If you want to send automatic responses the webhook messages need to get
    to your own address. You can do so adding the field ``redirect_to`` as a URL
    parameter. 10darts will forward to that address the Facebook
    message as it is.

    Example:

    https://your_10darts_webhook_URL/?redirect_to=https:///your_BOT_webhook_URL



Once all events and the webhook address are registered you only need to
indicate Facebook which Facebook Page will register the events.


.. figure:: /_static/images/messenger/page.png
  :alt: Page

  You only need to select the Facebook Page in the *Select Page* option within
  the dropdown menu.

5. Application Review
---------------------

You first need the ``pages_messaging``, authorization so you can reply a
user who has contacted you in the previous 24 hours.

In case you want to reply your user after that 24 hours window, you need
Facebook to grant you a ``pages_messaging_subscriptions`` permission. In that
case, your messages need to fall in any of the following categories:

- **News**, so you can inform your users about breaking news in sports, finance, business, weather, traffic, etc.
- **Productivity**, so you can send information on events, agenda, tasks, etc.
- **Personalized follow up information**, so you can send personalized information on fitness, health, wellbeing and finance.

Facebook does not allow to send ads or any short of promotional message.

Once those permits are approved and the webhooks are set up, any user who starts a conversation with the linked Facebook business page will be registered in the platform and you will be able to send him push notifications through **10darts**.
