.. _ios-sdk-user-data:

================
Adding user data
================

Link the device to your own user
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

You may need to associate the device with your own user. To do so, call ``linkDeviceWithUserIdentifier:(NSString*)userId onSuccess: (TDOnSuccess _Nullable ) successHandler onError: (TDOnError _Nullable ) errorHandler`` providing your user identifier on the last parameter:

**Objective-C**

.. code-block:: Objective-C

    [TendartsSDK linkDeviceWithUserIdentifier:@"my-user-id" onSuccess:^{

        //device linked, save it to not re-link again
    } onError:^(NSString * _Nullable error) {
        //something failed, try again later, more info on errorString
    }];

**Swift**

.. code-block:: Swift

    TendartsSDK.linkDevice(withUserIdentifier: "my-user-identifier", onSuccess: {
            //device linked, save it to not re-link again
        }) { (errorString) in
            //something failed, try again later, more info on errorString
        }

Adding user data
^^^^^^^^^^^^^^^^

You can optionally add user data, to do so, call `ModifyUserEmail` providing the fields you want to add or modify, if any parameter is null it will remain untouched.

**Objective-C**

.. code-block:: Objective-C

    [TendartsSDK ModifyUserEmail:email firstName:@"first" lastName:@"last" password:@"pass" onSuccess:^{
            //succeeded
        } onError:^(NSString * _Nullable error) {
            //failed
        }];

**Swift**

.. code-block:: Swift

    TendartsSDK.modifyUserEmail("email", firstName: "first name", lastName: "last name", password: "password", onSuccess: {
                //succeeded
            }, onError: { (errorString) in

                //error
            })
