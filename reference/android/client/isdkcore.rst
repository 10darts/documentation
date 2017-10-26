.. _android-sdk-classes-isdkcore:

.. java:import:: android.content Context

ISDKCore
========

.. java:package:: com.darts.sdk.client
   :noindex:

.. java:type:: public interface ISDKCore

   ISDKCore handles core events on SDK.

Methods
-------

.. java:method:: public void logEvent(String category, String type, String message)
   :outertype: ISDKCore

   Called to log events, for example to use analytics.

   .. code-block:: java

       Tracker _t = OnpublicoApplication.getPushTracker();
       if (_t != null)
       {
            _t.send(new HitBuilders.EventBuilder().setCategory("Push")
            .setNonInteraction(true)
            .setAction("errorRegister").setLabel(e.getMessage()).build());
       }

   :param category: category
   :param type: type
   :param message: message

.. java:method:: public String mainActivityClassName()
   :outertype: ISDKCore

   Called to retrieve the main activity class name ``return MainActivity.class.getName()``.

   :return: the main activity class name

.. java:method:: public void performSetup(Context context)
   :outertype: ISDKCore

   Called when the SDK is initialized Do any customization here like TendartsSDK.alwaysShowLastNotification: ``TendartsSDK.alwaysShowLastNotification(false);``.

   :param context: context to be used, for example to get string resources

.. java:method:: public void remoteLogException(Exception e)
   :outertype: ISDKCore

   To send a remote exception to your desired server e.g.: ``Crashlytics.logException(e);``.

   :param e: the exception to be logged

.. java:method:: void onUserLinkedToDevice()
   :outertype: ISDKCore
   
   If linkDeviceWithUserIdentifier has failed, an automatic retry is started, so when finally

   the user is linked this method will be called
