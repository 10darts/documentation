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

Add the following line to your app build.gradle:

* In androoid section:
.. code::

        packagingOptions {
            pickFirst 'META-INF/*'
        }
         defaultConfig
            {
                manifestPlaceholders = [tendarts_sdk_access_token: "YOUR ACCESS TOKEN",
                                        tendarts_sdk_client_class:"YOUR CLIENT CLASS",
                                        gcm_defaultSenderId: "YOUR GCM SENDER ID"]
            }
* In dependencies section:

.. code::

    ccompile  'com.10darts:sdk:1.10'




-  **tendarts_sdk_access_token**: your access token to 10 Darts
-  **dtendarts_sdk_client_class**: the full qualified name of your SDK
   implementation (see :ref:`Implementing client class <android-sdk-client>`)
-  **gcm_defaultSenderId**: the sender id you copied in the last step
   of :ref:`Google Cloud Messaging <faq-gcm>`



.. _android-sdk-client:


2. Create a client class whose superclass is DartsClient
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
:ref:`manifest configuration <android-sdk-setup>` **“darts\_clientClass”**



Add your custom functionality as needed, please refer to :ref:`Dartslient class documentation <android-sdk-classes-client>` for further documentation



3. Forward OnCreate of your Main Activity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code:: java

       DartsSDK.onCreate(savedInstanceState, this, new DartsSDK.ILocationAlerter()
       {
           @Override
           ublic void alertNotEnabled(Activity activity)
           {
               //See Adding Geolocation if you are using this feature otherwise leave empty function.
           }
       });

