.. _ios-delegate:

================
Adding Delegates
================

To add your delegate to the SDK you should implement the desired functionality in your delegate class adopting ``TendartsDelegate`` protocol:

**Objective-C**

.. code-block:: Objective-C

    - (void) onNotificationReceived: (TDNotification*_Nonnull) notification
    {
        //your code
    }
    - (void) onNotificationOpened: (TDNotification*_Nonnull) notification
    {
    	//your code
    }
    - (void) onLogEventWithCategory:(NSString*_Nullable) category type:(NSString*_Nullable) type andMessage:(NSString *_Nullable) message
    {
        //your code
    }

**Swift**

.. code-block:: Swift

    func onNotificationReceived(_ notification: TDNotification)
    {
        //your code
    }
    func onNotificationOpened(_ notification: TDNotification)
    {
        //your code
    }
    func onLogEvent(withCategory category: String?, type: String?, andMessage message: String?)
    {
        //your code
    }


Note that each function is optional to implement.


Then you should add your delegate to the SDK:

**Objective-C**

.. code-block:: Objective-C

    [TendartsSDK setDelegate: self ];

**Swift**

.. code-block:: Swift

    TendartsSDK.setDelegate(self)


Add it as soon as possible in your code.


.. note::

    On iOS 10 and above you should also add your delegate on your Service extension if you want to be called when a notification is received.


onNotificationReceived:
=======================

**Objective-C**

.. code-block:: Objective-C

    - (void) onNotificationReceived: (TDNotification*_Nonnull) notification

**Swift**

.. code-block:: Swift

    func onNotificationReceived(_ notification: TDNotification)

Called when a notification is received by the app. On iOS 10 and above this will be called from your service extension, so don't forget to add your delegate there before calling ``[TendartsSDK didReceiveNotificationRequest:request withContentHandler:contentHandler];``.

On older versions this will only be called when the app is running (either in foreground or background) but it will not be called if the app is terminated (swiped away from app switcher for example).

Parameter: notification
-----------------------

Received notification.

onNotificationOpenned
=====================

**Objective-C**

.. code-block:: Objective-C

    - (void) onNotificationOpened: (TDNotification*_Nonnull) notification;

**Swift**

.. code-block:: Swift

    func onNotificationOpened(_ notification: TDNotification)

Called when the user taps a notification, by default if the notification has a *Deep Link* it will be launched, if not you can use this method to complete the operation.

Parameter: notification
-----------------------

Opened notification.

onLogEventWithCategory,type,andMessage
======================================

**Objective-C**

.. code-block:: Objective-C

    - (void) onLogEventWithCategory:(NSString*_Nullable) category type:(NSString*_Nullable) type andMessage:(NSString *_Nullable) message;

**Swift**

.. code-block:: Swift

    func onLogEvent(withCategory category: String?, type: String?, andMessage message: String?)

Called to inform SDK's operations, could be useful for analytics.

Parameter: category
-------------------

Category of the event.

Parameter: type
---------------

Type of event.

Parameter: message
------------------

Message of the event

TDNotification
==============

This class encapsulates the notification.

title
-----

The title of the notification.

message
-------

The message body.

data
----

A dictionary with the raw data received from APNs.

nId
---

The notification's ID.

nNot
----

The notification generator's ID

deepLink
--------

The deep link if any.

contentId
---------

Content ID related to the notification if any.

contentType
-----------

Content type ID related to the notification.

image
-----

If any, the image's url.

userData
--------

The user data if any.
