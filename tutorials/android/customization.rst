=========================
Android SDK Customization
=========================

Configure SDK behavior
^^^^^^^^^^^^^^^^^^^^^^

The SDK configuration is done in the performSetup() function, just add
your custom configuration here

.. code:: java

   @Override
   public void performSetup()
   {
       SDK.instance().stackNotifications(true)
               .alwaysShowLastNotification(true)
               .limitNotificationSoundAndVibrationTime(true)
               .setLargeIconResource(R.mipmap.ic_launcher)
   }

Please refer to :ref:`SDK class documentation <android-sdk-classes-sdk>` for further
information


