.. _web:

=======
Web SDK
=======

.. js:method:: Tendarts.init(options)

  :param object options: SDK starting options.
  :param string options.token: Needed. **Application token** povided with 10darts application.
  :param string options.publicKey: Needed. **Public key** povided with 10darts application.
  :param string options.autosubscribe: Automatically requests users permission (default false).
  :param string options.geolocation: Saves the user's location (default false).
  :param string options.degug: Show log messages in console (default false).
  :param options.key: tag associated to the device created or key/value associated to the device.
  :param string options.key.label: key name.
  :param string options.key.value: value associated with the key.
  :param int options.key.kind: value type associated to the key so it is correctly represented, 0: float, 1: int, 2: string, 3: bool. (default 3).
  :type options.key: string or object

.. js:method:: Tendarts.subscribe

  Requests users permission to register the application and receive push notifications.

.. js:method:: Tendarts.unsubscribe

  Removes user subscription and he will not receive any other push notifications.

.. js:method:: Tendarts.clear

  Removes user subscription and local saved data.

.. js:method:: Tendarts.linkDeviceClientData(clientData)

  Links the device with the user with a certain client data.

  :param string client_data: client’s unique reference to identify the user.


.. js:method:: Tendarts.saveKey(label, value, kind):

  Creates a key or a key/value associated to the registered device. You can create keys with no value as if they were tags.

  :param string label: key name.
  :param string value: value associated with the key.
  :param int kind: value type associated to the key so it is correctly represented, 0: float, 1: int, 2: string, 3: bool. (default 3).
