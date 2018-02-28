==========================
Facebook Messenger Plugins
==========================

Facebook provides a variety of easy-to-integrate plug-ins that bring users to your messenger from the web.
`Messenger's web pug-ins <https://developers.facebook.com/docs/messenger-platform/reference/web-plugins>`_
allow your user's to choose to receive messages, open a new conversation, and more. You can add user
referral information to the plugins.

Referral
--------

Referral field can be used to add user information to **10darts** backend. You can add ``client_data``
value to link your CRM user key with 10darts user key. You can also add key/values to qualify
your user/visitor adding his interests, user acquisition channel, etc.

The referral field format is the following: client_data and keys/values are separated using ``|``,
each key/value is separated using ``;`` and the key and value are separated using ``:``.

Example::

  client_data_value|key1:value1;key2:value2


Example without ``client_data``::

  key1:value1;key2:value2

**Important**: referral field **needs to be encoded** in **Base64**.
