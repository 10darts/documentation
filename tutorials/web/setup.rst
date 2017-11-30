=========
Web Setup
=========

10darts web SDK is Chrome and Firefox compatible.

Setup requirements
------------------

You need a 10darts account and a https web.

Setup your web application
--------------------------

Go to the `Application section <https://10darts.com/app/applications>`_ in your
10darts dashboard and create an application. You must introduce the name and
web URL. Please make sure the URL where you want to install the SDK is correct,
otherwise you will not be able to make calls to our server.

.. figure:: /_static/images/web/app.png
  :alt: App

Once you have set up the application, 10darts has all data needed to allow you
to set up your web SDK.

Web SDK Setup
-------------

Download and set up 10darts file so it’s accessible from your project’s root. It should be::

  https://yoursite.com/10dartsServiceWorker.js

You can download the latest version of the worker from
`here <https://github.com/10darts/web-TendartsSDK/releases/latest>`_.

Insert the code to start the SDK:

.. code-block:: html

<<<<<<< HEAD
  <script src="https://sdk.10darts.com/v0.2/10dartsSDK.js"></script>
=======
  <script src="https://sdk.10darts.com/v0.2/10dartsSDK.js" async></script>
>>>>>>> adf090a48bd2e8f8a7963678fe6c8e762d22b3c0
  <script>
    var Tendarts = window.Tendarts || {};
    Tendarts.init({
      token: 'YOUR_APPLICATION_TOKEN',
      publicKey: 'YOUR_APPLICATION_KEY',
      autosubscribe: true,
      geolocation: true,
      debug: false,
   });
  </script>

You can download the latest version of the SDK from
`here <https://github.com/10darts/web-TendartsSDK/releases/latest>`_.


Replace ``YOUR_APPLICATION_TOKEN`` and ``YOUR_APPLICATION_KEY`` with our
application credentials.
