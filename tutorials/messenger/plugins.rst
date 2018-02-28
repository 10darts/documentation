==========================
Facebook Messenger Plugins
==========================

You can integrate Messenger using
`the available plugins <https://developers.facebook.com/docs/messenger-platform/reference/web-plugins>`_ from
Facebook. In case you want to save data from your platform to our users, yo can add referral
information to the plugins.

Referral
--------

You can give to **10darts** data about your users using the referral field from
Facebook Messenger plugins. This data could be the ``client_data`` value and any
amount of key/values.

The ``client_data`` and the keys/values are separated by
the ``|`` character. Each key/value is separated using ``;`` character and the
key is separated from the value using ``:`` character.

Example::

  client_data_value|key1:value1;key2:value2


Example without ``client_data``::

  key1:value1;key2:value2

**10darts** expects a referral field encoded in base64, therefore this sting should be base64
encoded before sending it to Facebook.
