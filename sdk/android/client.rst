.. _android-sdk-client:

Implementing client class
=========================

1 Create a client class whose superclass is SDKClient
-----------------------------------------------------

.. figure:: /_static/images/client1.png
   :alt: Create class

   Create class

And implement all the methods, default implementation it’s ok for
starting but you should add your own functionality as needed.

.. figure:: /_static/images/client2.png
   :alt: Implement methods

   Implement methods

Don't forget to add the full qualified name of this class to the
:ref:`manifest configuration <android-sdk-index>` **“sdk\_clientClass”**

2 Configure SDK behavior
-------------------------

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

3 Implement your functionality
------------------------------

Add your custom functionality as needed, please refer to :ref:`SDKClient class documentation <android-sdk-classes-client>` for further documentation

.. code:: java

    @Override
    public String mainActivityClassName()
    {
        return MainActivity.class.getName();
    }

    @Override
    public CharSequence getLocationExplanation(Context context)
    {
        return context.getString(R.string.locationPermissionExplanation);
    }

Next Steps
----------

If you are using Geolocation please follow :ref:`Adding
Geolocation <android-sdk-geolocation>` to properly configure your app to
work with Geolocation.

Additional Documentation
------------------------

:ref:`SDKClient class documentation <android-sdk-classes-client>`

:ref:`SDK class documentation <android-sdk-classes-sdk>`
