.. _android-sdk-classes-sdkclient:

TendartsClient
==============

.. java:type:: public abstract class TendartsClient extends BroadcastReceiver implements INotifications, ISDKCore

    You should subclass TendartsClient and implement the interfaces (mysdkClient) as needed.

    Add to the manifest.

    .. code-block:: xml

        <meta-data android:name="sdk_clientClass"
                   android:value="com.mycompany.myapp.mysdkClient" />
