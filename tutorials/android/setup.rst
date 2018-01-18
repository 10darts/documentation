.. _android-sdk-setup:

=================
Android SDK Setup
=================

The following instructions will guide you through the process of implementing
10darts SDK into your application. These instructions are based
on *Android Studio*.


.. note::

    Please note that your users’ devices should have Google Play services
    installed and updated for the proper operation of this SDK

.. warning::

    Before proceeding you should have created a GCM project in your firebase
    console, please refer to :ref:`Google Cloud Messaging <faq-gcm>` and
    follow the steps.



Configure the application
-------------------------

1. Library
^^^^^^^^^^

Add the following line to your app build.gradle:

* In android section:

.. code-block:: groovy

    packagingOptions {
        pickFirst 'META-INF/*'
    }

    defaultConfig
    {
        manifestPlaceholders = [
            tendarts_sdk_access_token: "YOUR ACCESS TOKEN",
            tendarts_sdk_client_class:"YOUR CLIENT CLASS",
            gcm_sender_id: "YOUR GCM SENDER ID"
        ]
    }

* In dependencies section:

.. code-block:: groovy

    compile  'com.10darts:sdk:1.25'


-  **tendarts\_sdk\_access\_token**: your access token to 10darts (API Key)
-  **dtendarts\_sdk\_client\_class**: the full qualified name of your SDK
   implementation (see :ref:`Implementing client class <android-sdk-client>`)
-  **gcm\_sender\_id**: the sender id you copied in the last step
   of :ref:`Google Cloud Messaging <faq-gcm>`


.. _android-sdk-client:

2. Create a client class whose superclass is TendartsClient
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. figure:: /_static/images/client1.png
  :alt: Create class

  Create class

  And implement the methods, default implementation it’s ok for starting but you
  should add your own functionality as needed.

.. figure:: /_static/images/client2.png
  :alt: Implement methods

.. code-block:: java

    @Override
    public String mainActivityClassName()
    {
        return MainActivity.class.getName();
    }

Don't forget to add the full qualified name of this class to
``tendarts_sdk_client_class`` on the manifest placeholders.

Add your custom functionality as needed, please refer to :ref:`TendartsClient class <android-sdk-classes-client>` for further documentation



3. Forward functions of your Main Activity
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Forward onCreate:

.. code-block:: java

    TendartsSDK.onCreate(savedInstanceState, this, new TendartsSDK.ILocationAlerter()
    {
        @Override
        public void alertNotEnabled(Activity activity)
        {
            // See Adding Geolocation if you are using this
            // feature otherwise leave empty function.
        }
    });


And onResume:

.. code-block:: java

    TendartsSDK.onResume(getApplicationContext());



.. warning::

    If you are targeting Android API level higher than 22 you should follow :ref:`Targeting Android API level >= 23 <android-target-api>`


.. note::

    See :ref:`Adding Geolocation <android-sdk-geolocation>` for increasing location accuracy and receiving location updates.


.. note::

    When a user clicks on the notification the user launches the deep link, check :ref:`Deep linking <faq-deep-link>`
