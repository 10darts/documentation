.. _android-sdk-user-data:

================
Adding user data
================


Link the device to your own user
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You may need to associate the device with your own user. To do so, call `linkDeviceWithUserIdentifier` providing your user identifier on the last parameter:

.. code-block:: java

    TendartsSDK.linkDeviceWithUserIdentifier(new TendartsSDK.IResponseObserver()
		{
			@Override
			public void onOk()
			{
				//device linked, save it to not re-link again
			}

			@Override
			public void onFail(String errorString)
			{
				//something failed, try again later, more info on errorString
			}
		},this,"my-user-identifier");


Adding user data
^^^^^^^^^^^^^^^^

You can optionally add user data, to do so, call `modifyUser` providing the fields you want to add or modify, if any parameter is null it will remain untouched.

.. code-block:: java

    TendartsSDK.modifyUser("email", "first name", "last name", "password", new TendartsSDK.IResponseObserver()
		{
			@Override
			public void onOk()
			{
				//succeeded
			}

			@Override
			public void onFail(String errorString)
			{
				//failed
			}
		}, this);
