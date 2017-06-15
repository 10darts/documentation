.. _android-sdk-geolocation:

==================
Adding Geolocation
==================

Forward your Main Activity events
---------------------------------

In order to keep geolocation updates properly you should forward the
main activity events to the TendarsSDK class.

you can see `here <https://developer.android.com/guide/components/activities/activity-lifecycle.html>`_ more info about activity events.


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

Optionally you can fill the `alertNotEnabled` function to show the user a warning when locations are not enabled (see :ref:`Show location warning <android-sdk-alert-location>`)

**onStart:**
see Android's onPause `documentation <https://developer.android.com/reference/android/app/Activity.html#onStart()>`_  for more info

.. code-block:: java

    endartsSDK.onStart();


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



Get notified on location updates
----------------------------------

To get notified when a new location is available, you should register
your listener

.. code:: java

    TendartsSDK.registerGeoLocationReceiver( myReceiver );

Note that the instance of the receiver will not be kept so you should
store it while you need location updates otherwise it could be
garbage-collected

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


Targetting API >= 23
--------------------

If you are  targetting Android API level greater than 22 plesase see :ref:`Android target API <android-target-api>`.
