.. _android-sdk-setup:

.. Guía para la instalación en Android del SDK.

=================
Android SDK Setup
=================

The following instructions will guide you through the process of
implementing 10 Darts SDK in your application, the instructions are
based on *Android Studio.*

.. note::
    If you are not familiar with *Android Studio* please refer to this
    :ref:`Quick tutorial <faq-android-application>`.

.. note::
    Note that the target devices should have Google Play services installed
    and updated on it for the proper operation of this SDK

.. warning::
    Before proceeding you should have created a GCM project in your firebase
    console, please refer to :ref:`Google Cloud Messaging <faq-gcm>` and
    follow the steps.


Configure the application
-------------------------

1. Library
^^^^^^^^^^

-  Copy the SDK ``aar`` files to your libs directory

.. ¿Enlaces para la descarga? O Mejor, subir a JCenter/Maven Central el
    paquete y poner directamente la dependencia.

2. Gradle setup
^^^^^^^^^^^^^^^

-  Add the library to the dependencies:

.. code::

    compile(name: 'sdk-sdkProduction-release', ext: 'aar')
    compile(name: 'general-release', ext: 'aar')

.. note::

    if you have a warning "Error:Failed to resolve: :sdk-sdkProduction-release:"
    check that in your project build.gradle you have added libs directory with flatDir:

   .. code::

       allprojects {
           repositories {
               jcenter()
               flatDir {
                   dirs 'libs'
               }
           }
       }



-  Add the needed dependencies:

.. code::

    compile 'com.google.android.gms:play-services-auth:9.8.0'
    compile 'com.google.android.gms:play-services-gcm:9.8.0'
    compile 'com.google.android.gms:play-services-location:9.8.0'
    compile 'org.apache.httpcomponents:httpclient-android:4.3.5'
    compile 'org.apache.httpcomponents:httpmime:4.3.5'

.. Esto no debería de ser necesario, el SDK debería de indicar sus
    propias dependencias, sin que el usuario las tuviera que poner
    de forma explícita.


- Add packaging options in android section:

 .. code::

        packagingOptions {
            pickFirst 'META-INF/*'
        }




3. Update manifest
^^^^^^^^^^^^^^^^^^

-  Add the required permissions:

.. code:: xml

    <uses-permission android:name="android.permission.INTERNET"/>
    <uses-permission android:name="com.google.android.c2dm.permission.RECEIVE"/>
    <uses-permission android:name="com.google.android.c2dm.permission.REGISTER"/>
    <uses-permission android:name="com.google.android.c2dm.permission.SEND"/>
    <uses-permission android:name="android.permission.ACCESS_COARSE_LOCATION"/>
    <uses-permission android:name="android.permission.ACCESS_FINE_LOCATION"/>
    <uses-permission android:name="android.permission.GET_ACCOUNTS"/>

-  Add C2D Message permission, note you should change
   **yourpackagename** with your app package, e.g.:
   *com.yourcompany.appname*

.. code:: xml

    <permission android:name="yourpackagename.C2D_MESSAGE" android:protectionLevel="signature"/>
    <uses-permission android:name="yourpackagename.C2D_MESSAGE"/>

-  In Application section add the required receivers note you should
   change **yourpackagename** with your app package, e.g.:
   *com.yourcompany.appname*:

.. code:: xml

    <receiver android:name="com.darts.sdk.gcm.DartsReceiver">
        <intent-filter>
            <action android:name="com.darts.sdk.CLEAR_PUSHES"/>
            <action android:name="com.darts.sdk.OPEN_PUSH"/>
            <action android:name="com.darts.sdk.OPEN_LIST"/>
        </intent-filter>
    </receiver>

    <receiver
        android:name="com.google.android.gms.gcm.GcmReceiver"
        android:exported="true"
        android:permission="com.google.android.c2dm.permission.SEND" >
        <intent-filter>
            <action android:name="com.google.android.c2dm.intent.RECEIVE" />
            <action android:name="com.google.android.c2dm.intent.REGISTRATION" />
            <category android:name="yourpackagename" />
        </intent-filter>
    </receiver>

    <service
        android:name="com.darts.sdk.gcm.GCMListenerService"
        android:exported="false">
        <intent-filter>
            <action android:name="com.google.android.c2dm.intent.RECEIVE"/>
        </intent-filter>
    </service>

    <service
        android:name="com.darts.sdk.gcm.GCMInstanceIdListener"
        android:exported="false">
        <intent-filter>
            <action android:name="com.google.android.gms.iid.InstanceID"/>
        </intent-filter>
    </service>

    <service
        android:name="com.darts.sdk.gcm.GCMRegistrationIntentService"
        android:exported="false">
    </service>

-  The last step is to add your configuration inside the Application
   section

.. code:: xml

  <meta-data
      android:name="sdk_accessToken"
      android:value="value"/>

  <meta-data
      android:name="sdk_clientClass"
      android:value="value"/>

  <meta-data
      android:name="gcm_defaultSenderId"
      android:value="value"/>

-  **sdk\_accessToken**: your access token to 10 Darts
-  **sdk\_clientClass**: the full qualified name of your SDK
   implementation (see :ref:`Implementing client class <android-sdk-client>`)
-  **gcm\_defaultSenderId**: the sender id you copied in the last step
   of :ref:`Google Cloud Messaging <faq-gcm>`

.. _android-sdk-client:

Implementing client class
-------------------------

Create a client class whose superclass is SDKClient
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. Posible mejora: No necesitar una subclase para empezar a funcionar,
    se temdria que poder empezar con una implementación por defecto.

.. figure:: /_static/images/client1.png
  :alt: Create class

  Create class

And implement the methods, default implementation it’s ok for
starting but you should add your own functionality as needed.

.. figure:: /_static/images/client2.png
  :alt: Implement methods

  Implement methods

.. warning::
    Don't forget to add the full qualified name of this class to the
    :ref:`manifest configuration <android-sdk-setup>` **“sdk\_clientClass”**

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

Implement your functionality
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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


Forward OnCreate of your Main Activity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: java

   @Override
   protected void onCreate(Bundle savedInstanceState)
   {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_main);

       SDK.onCreate(savedInstanceState, this, new Communications.ILocationAlerter()
       {
           @Override
           public void alertNotEnabled(Activity activity)
           {
               //See Adding Geolocation if you are using this feature otherwise leave empty function.
           }
       });
   }
