.. _ios-sdk-user-data:

================
Adding user data
================

Link the device to your own user
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You may need to associate the device with your own user. To do so, call
``linkDeviceWithUserIdentifier:(NSString*)userId onSuccess: (TDOnSuccess _Nullable ) successHandler onError: (TDOnError _Nullable ) errorHandler``
providing your user identifier on the last parameter:

**Objective-C**

.. code-block:: Objective-C

  [TendartsSDK linkDeviceWithUserIdentifier:@"my-user-id" onSuccess:^{
      // Device linked, save it to not re-link again
  } onError:^(NSString * _Nullable error) {
      // Something failed, try again later, more info on errorString
  }];

**Swift**

.. code-block:: Swift

  TendartsSDK.linkDevice(withUserIdentifier: "my-user-identifier", onSuccess: {
      //device linked, save it to not re-link again
  }) { (errorString) in
      // Something failed, try again later, more info on errorString
  }

Adding user data
^^^^^^^^^^^^^^^^

You can optionally add user data, to do so, call `modifyUserEmail` providing the fields you want to add or modify, if any parameter is null it will remain untouched.

**Objective-C**

.. code-block:: Objective-C

  [TendartsSDK modifyUserEmail:email firstName:@"first" lastName:@"last" password:@"pass" onSuccess:^{
      // Succeeded
  } onError:^(NSString * _Nullable error) {
      // Failed
  }];

**Swift**

.. code-block:: Swift

    TendartsSDK.modifyUserEmail("email", firstName: "first name", lastName: "last name", password: "password", onSuccess: {
        // Succeeded
    }, onError: { (errorString) in
        // Error
    })

Saving arbitrary data to users and devices
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You can save to any user or device any data using a key/value storage. The type of the value
can be set usiong the ``kind`` argument, which that value is, 0: float, 1: int, 2: string,
3: bool.

For adding data to devices:

**Objective-C**

.. code-block:: Objective-C

  [TendartsSDK sendDeviceKey: @"somekey" kind: @3 value: @"true" onSuccess:^{
      // Succeeded
  } onError:^(NSString * _Nullable error) {
      // Error
  }];

And for users:

**Objective-C**

.. code-block:: Objective-C

  [TendartsSDK sendPersonaKey: @"somekey" kind: @3 value: @"true" onSuccess:^{
      // Succeeded
  } onError:^(NSString * _Nullable error) {
      // Error
  }];
