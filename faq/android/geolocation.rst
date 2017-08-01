.. _android-sdk-geolocation:

==================
Adding Geolocation
==================

Improving location accuracy
^^^^^^^^^^^^^^^^^^^^^^^^^^^

To improve location accuracy you should forward some Main Activity events, note that some of them you may have already forwarderd.


Forward your Main Activity events
---------------------------------

In order to keep geolocation updates properly you should forward the main
activity events to the TendartsSDK class

You can see `here <https://developer.android.com/guide/components/activities/activity-lifecycle.html>`_ more info about activity events.


In your main activity override the following events and forward them to
the SDK:

**onCreate:**
see Android's `onCreate documentation <htttps://developer.android.com/reference/android/app/Activity.html#onCreate(android.os.Bundle)>`_  for more info

.. code:: java

        TendartsSDK.onCreate(savedInstanceState, this, new  TendartsSDK.ILocationAlerter()
        {
            @Override
            public void alertNotEnabled(Activity activity)
            {

            }
        });
    }

Optionally you can fill the ``alertNotEnabled`` function to show the user a warning when locations are not enabled (see  :ref:`Filling alertNotEnabled <android-sdk-alert-location>`)

**onStart:**

see Android's `onStart documentation <https://developer.android.com/reference/android/app/Activity.html#onStart()>`_  for more info

.. code-block:: java

    TendartsSDK.onStart();




**onResume:**

see Android's `onResume documentation <https://developer.android.com/reference/android/app/Activity.html#onResume()>`_  for more info

.. code-block:: java

    TendartsSDK.onResume(getApplicationContext());




**onPause:**
see Android's `onPause documentation <https://developer.android.com/reference/android/app/Activity.html#onPause()>`_  for more info

.. code-block:: java

    TendartsSDK.onPause();




**onStop**
see Android's `onStop documentation <https://developer.android.com/reference/android/app/Activity.html#onStop()>`_  for more info

.. code-block:: java

    TendartsSDK.onStop();




**onDestroy**

see Android's `onDestroy documentation <https://developer.android.com/reference/android/app/Activity.html#onDestroy()>`_  for more info

.. code:: java

        TendartsSDK.onDestroy();




Optional
^^^^^^^^

Get notified on location updates
----------------------------------

To get notified when a new location is available, you should register your
listener, for example in onCreate

.. code:: java

    TendartsSDK.registerGeoLocationReceiver(new TendartsSDK.IGeoLocationReceiver()
        {
            @Override
            public void onNewLocation(TendartsSDK.GeoLocation geoLocation)
            {

            }
        });

Note that the instance of the receiver will not be kept so you should store it
while you need location updates otherwise it could be garbage-collected.

You could also get the current location synchronously:

.. code:: java

    TendartsSDK.getCurrentGeoLocation();

By default geolocation updates are enabled, to change it's status just
call:

.. code:: java

    // Enable geolocation updates:
    TendartsSDK.enableGeolocationUpdates();

    // Disable geolocation updates:
    TendartsSDK.disableGeolocationUpdates();

.. toctree::
    :maxdepth: 2
    :glob:

    geolocation/*
