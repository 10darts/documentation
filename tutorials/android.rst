.. _android-sdk-setup:

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


-  Add the library and needed dependncies to the dependencies section of your gradle file

.. code::

    compile(name: 'sdk-sdkProduction-release', ext: 'aar')
    compile(name: 'general-release', ext: 'aar')
    compile 'com.google.android.gms:play-services-auth:9.8.0'
    compile 'com.google.android.gms:play-services-gcm:9.8.0'
    compile 'com.google.android.gms:play-services-location:9.8.0'
    compile 'org.apache.httpcomponents:httpclient-android:4.3.5'
    compile 'org.apache.httpcomponents:httpmime:4.3.5'

.. note::

    *********if you have a warning "Error:Failed to resolve: :sdk-sdkProduction-release:"
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

- Add packaging options in android section:

 .. code::

        packagingOptions {
            pickFirst 'META-INF/*'
        }




2. Configure 10Darts
^^^^^^^^^^^^^^^^^^^^


-  Add your configuration inside the Application
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


3. Create a client class whose superclass is SDKClient
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: /_static/images/client1.png
  :alt: Create class

  Create class

And implement the methods, default implementation it’s ok for
starting but you should add your own functionality as needed.

.. figure:: /_static/images/client2.png
  :alt: Implement methods

  Implement methods

.. code:: java

   @Override
   public String mainActivityClassName()
   {
       return MainActivity.class.getName();
   }

Don't forget to add the full qualified name of this class to the
:ref:`manifest configuration <android-sdk-setup>` **“sdk\_clientClass”**



Add your custom functionality as needed, please refer to :ref:`SDKClient class documentation <android-sdk-classes-client>` for further documentation



4. Forward OnCreate of your Main Activity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
