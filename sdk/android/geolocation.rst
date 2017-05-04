.. _android-sdk-geolocation:

Adding Geolocation
==================

1 Forward your Main Activity events
-----------------------------------

In order to keep geolocation updates properly you should forward the
main activity events to the SDK

In your main activity override the following events and forward them to
the SDK:

.. code:: java

    @Override
    protected void onRestoreInstanceState(Bundle savedInstanceState)
    {
        super.onRestoreInstanceState(savedInstanceState);
        SDK.onRestoreInstanceState(savedInstanceState,getApplicationContext());
    }

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
                AlertDialog alertDialog = new AlertDialog.Builder(MainActivity.this).create();
                alertDialog.setTitle("Location");
                alertDialog.setMessage("Location not enabled");
                alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                    new DialogInterface.OnClickListener()
                    {
                        public void onClick(DialogInterface dialog, int which)
                        {
                            dialog.dismiss();
                        }
                    });
            alertDialog.show();
            //todo: add second button and redirect the user to location configuration.
            }
        });
    }

    @Override
    protected void onDestroy()
    {
        SDK.onDestroy();
        super.onDestroy();
    }

    @Override
    protected void onSaveInstanceState(Bundle outState)
    {
        super.onSaveInstanceState(outState);
        SDK.onSaveInstanceState(outState);
    }

    @Override
    protected void onPause()
    {
        super.onPause();
        SDK.onPause();
    }

    @Override
    protected void onStart()
    {
        super.onStart();
        SDK.onStart();
    }

    @Override
    protected void onStop()
    {
        super.onStop();
        SDK.onStop();
    }

    @Override
    protected void onResume()
    {
        super.onResume();
        SDK.onResume(getApplicationContext());
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults)
    {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);               SDK.onRequestPermissionsResult(
                requestCode,
                permissions,
                grantResults,
    getApplicationContext());
    }

2 Get notified on location updates
----------------------------------

To get notified when a new location is available, you should register
your listener

.. code:: java

    SDK.registerGeoLocationReceiver( myReceiver );

Note that the instance of the receiver will not be kept so you should
store it while you need location updates otherwise it could be
garbage-collected

You could also get the current location synchronously:

.. code:: java

    SDK.getCurrentGeoLocation();

By default geolocation updates are enabled, to change it's status just
call:

.. code:: java

    // Enable geolocation updates:
    SDK.enableGeolocationUpdates();

    // Disable geolocation updates:
    SDK.disableGeolocationUpdates();
