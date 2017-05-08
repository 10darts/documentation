.. _android-sdk-classes-sdkclient:

SDKClient
=========

``public abstract class SDKClient extends BroadcastReceiver implements INotifications, ISDKCore``
-------------------------------------------------------------------------------------------------

You should subclass SDKClient and implement the interfaces (mysdkClient)

add to the manifest:
``<meta-data android:name="sdk_clientClass" android:value="com.mycompany.myapp.mysdkClient"/>``

:ref:`ISDKCore <android-sdk-classes-isdkcore>`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:ref:`INotifications <android-sdk-classes-inotifications>`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:ref:`IUIStrings <android-sdk-classes-iustrings>`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

:ref:`IGeolocation <android-sdk-classes-igeolocation>`
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
