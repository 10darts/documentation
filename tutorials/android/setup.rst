.. _android-sdk-setup:

=================
Android SDK Setup
=================

The following instructions will guide you through the process of
implementing 10 Darts SDK in your application, the instructions are
based on *Android Studio.*

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

Add the following line to your app build.gradle:

* In androoid section:

.. code::

    packagingOptions {
        pickFirst 'META-INF/*'
    }

* In dependencies section:

.. code::

    compile  'com.10darts:sdk:1.10'

2. Configure 10Darts
^^^^^^^^^^^^^^^^^^^^

-  Add your configuration inside the Application
   section

.. code:: xml

  <meta-data
      android:name="darts_accessToken"
      android:value="value"/>

  <meta-data
      android:name="darts_clientClass"
      android:value="value"/>

  <meta-data
      android:name="darts_GcmSenderId"
      android:value="value"/>

-  **darts\_accessToken**: your access token to 10 Darts
-  **darts\_clientClass**: the full qualified name of your SDK
   implementation (see :ref:`Implementing client class <android-sdk-client>`)
-  **darts\d_GcmSenderId**: the sender id you copied in the last step
   of :ref:`Google Cloud Messaging <faq-gcm>`

.. _android-sdk-client:


3. Create a client class whose superclass is DartsClient
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

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
:ref:`manifest configuration <android-sdk-setup>` **“darts\_clientClass”**



Add your custom functionality as needed, please refer to :ref:`Dartslient class documentation <android-sdk-classes-client>` for further documentation



4. Forward OnCreate of your Main Activity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: java

   @Override
   protected void onCreate(Bundle savedInstanceState)
   {
       super.onCreate(savedInstanceState);
       setContentView(R.layout.activity_main);


       DartsSDK.onCreate(savedInstanceState, this, new DartsSDK.ILocationAlerter()
       {
           @Override
           ublic void alertNotEnabled(Activity activity)
           {
               //See Adding Geolocation if you are using this feature otherwise leave empty function.
           }
       });
