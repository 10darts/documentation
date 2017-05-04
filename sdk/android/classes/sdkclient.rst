SDKClient
=========

``public abstract class SDKClient extends BroadcastReceiver implements INotifications, ISDKCore``
-------------------------------------------------------------------------------------------------

You should subclass SDKClient and implement the interfaces (mysdkClient)

add to the manifest:
``<meta-data android:name="sdk_clientClass" android:value="com.mycompany.myapp.mysdkClient"/>``
