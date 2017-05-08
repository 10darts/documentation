.. _android-sdk-classes-isdkcore:

ISDKCore
========

``public interface ISDKCore``
-----------------------------

ISDKCore handles core events on SDK

``public void remoteLogException(Exception e)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

To send a remote exception to your desired server e.g.: {@code
Crashlytics.logException(e);}

-  **Parameters:** ``e`` — the exception to be logged

``public void logEvent(String category, String type, String message)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called to log events, for example to use analytics

.. code:: java

    Tracker _t = OnpublicoApplication.getPushTracker();
    if (_t != null)
    {
        _t.send(new HitBuilders.EventBuilder()
        .setCategory("Push")
        .setNonInteraction(true)
        .setAction("errorRegister")
        .setLabel(e.getMessage())
        .build());
    }

-  **Parameters:**
-  ``category`` — category
-  ``type`` — type
-  ``message`` — message

``public void performSetup()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called when the SDK is initialized

Do any customization here like Sdk.alwaysShowLastNotification:

.. code:: java

     Sdk.alwaysShowLastNotification(false);

``public String mainActivityClassName()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called to retrieve the main activity class name

.. code:: java

     return MainActivity.class.getName()

-  **Returns:** the main activity class name
