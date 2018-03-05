.. _web-sdk-setup:
=========
Web Setup
=========

10darts web SDK is Chrome, Firefox and Opera compatible.

Platform Support
----------------

+------------+-----------------+---------------+------------+------------+
| Browser    | Windows         | macOS         | Android    | iOS        |
+============+=================+===============+============+============+
| Chrome     | Yes [2]_        | Yes [1]_ [2]_ | Yes        | No         |
+------------+-----------------+---------------+------------+------------+
| Firefox    | Yes [1]_ [2]_   | Yes [1]_ [2]_ | Yes [1]_   | No         |
+------------+-----------------+---------------+------------+------------+
| Safari     | No              | No            | \-         | No         |
+------------+-----------------+---------------+------------+------------+
| Opera      | Yes [1]_ [2]_   | Yes [1]_ [2]_ | Yes [1]_   | No         |
+------------+-----------------+---------------+------------+------------+
| Edge       | No              | \-            | No         | No         |
+------------+-----------------+---------------+------------+------------+

.. [1] Notifications do not support images.

.. [2] Notifications are only shown when the browser is opened.

Note: Notifications are not shown when user is in "incognito" mode.

Platform Preview
----------------

**macOS - Chrome**

.. figure:: /_static/images/web/macOS_Chrome.png
  :alt: macOS - Chrome

**macOS - Firefox**

.. figure:: /_static/images/web/macOS_Firefox.png
  :alt: macOS - Firefox

**macOS - Opera**

.. figure:: /_static/images/web/macOS_Opera.png
  :alt: macOS - Opera

**Windows - Chrome**

.. figure:: /_static/images/web/windows_Chrome.png
  :alt: Windows - Chrome

**Windows - Firefox**

.. figure:: /_static/images/web/windows_Firefox.png
  :alt: Windows - Firefox

**Windows - Opera**

.. figure:: /_static/images/web/windows_Opera.png
  :alt: Windows - Opera

**Android - Chrome**

.. figure:: /_static/images/web/android_Chrome.png
  :alt: Android - Chrome

**Android - Firefox**

.. figure:: /_static/images/web/android_Firefox.png
  :alt: Android - Firefox

**Android - Opera**

.. figure:: /_static/images/web/android_Opera.png
  :alt: Android - Opera

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

  <script src="https://sdk.10darts.com/v0.2/10dartsSDK.js"></script>
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
