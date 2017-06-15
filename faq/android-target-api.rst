.. _android-target-api:

==================================
Targetting Android API level >= 23
==================================


Starting on API level 23, Android ask permissions on runtime instead of at installation

`See Android documentation <https://developer.android.com/training/permissions/requesting.html>`_

So a bit of extra work is needed in order to receive location updates:


In your `TendartsClient` implemetation you should override `getLocationExplanation` returning the explanation of why youur app uses location and why permission should be granted:

.. code-block:: java

    @Override
	public CharSequence getLocationExplanation(Context context)
	{
		return super.getLocationExplanation(context);
	}



In your Main Activity you should override `onRequestPermissionsResult` and forward to  `TendartsSDK`




.. code:: java

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults)
    {
        super.onRequestPermissionsResult(requestCode, permissions, grantResults);               

        TendartsSDK.onRequestPermissionsResult(
                requestCode,
                permissions,
                grantResults,
                getApplicationContext());
    }
