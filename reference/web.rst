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

.. js:method:: Tendarts.subscribe

  Requests users permission to register the application and receive push notifications.

.. js:method:: Tendarts.unsubscribe

  Removes user subscription and he will not receive any other push notifications.

.. js:method:: Tendarts.clear

  Removes user subscription and local saved data.

.. js:method:: Tendarts.linkDeviceClientData(clientData)

  Links the device with the user with a certain client data.

  :param string client_data: client’s unique reference to identify the user.
