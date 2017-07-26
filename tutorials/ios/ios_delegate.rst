.. _ios-delegate:

================
Adding Delegates
================

To add your delegate to the SDK you should implement the desired functionality in your delegate class:

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

note that each function is optional to implement


Then you should add your delegate to the SDK:

.. code-block:: Objective-C

    [TendartsSDK setDelegate: self ];

add it as soon as possible in your code.


.. note::

    On iOS 10 and avove you shoul also add your delegate on your Service extension if you want to be called when a notification is received.




onNotificationReceived:
=======================

´- (void) onNotificationReceived: (TDNotification*_Nonnull) notification´

Called when a notification is recevied by the app. On iOS 10 and avove this will be called from your service extension, so don't forget to add your delegate there before calling `[TendartsSDK didReceiveNotificationRequest:request withContentHandler:contentHandler];`

On older versions this only will be called when de app is running (either in foreground or background) but it will not be called if the app is terminated (swipped away from app switcher for example)

Parameter: notification
-----------------------

Received notification



onNotificationOpenned
=====================

´- (void) onNotificationOpened: (TDNotification*_Nonnull) notification;´

Called when the user taps a notification, by default if the notification has a *Deep Link* it will be launched, if not you can use this method to complete the operation.

Parameter: notification
-----------------------

Openned notification


onLogEventWithCategory,type,andMessage
======================================

´- (void) onLogEventWithCategory:(NSString*_Nullable) category type:(NSString*_Nullable) type andMessage:(NSString *_Nullable) message;´

Called to inform SDK's operations, could be usefull for analytics.

Parameter: category
-------------------

Category of the event

Parameter: type
---------------

Type of event

Parameter: message
------------------

Message of the event




TDNotification
==============

This class encapsulates the notification


title
^^^^^

The title of the notification

message
^^^^^^^

The message body

data
^^^^

A dictionary with the raw data received from APNs

nId
^^^

The notfification's ID

nNot
^^^^

The notification generator's ID

deepLink
^^^^^^^^

The deep link if any

contentId
^^^^^^^^^

Content ID related to the notification if any

contentType
^^^^^^^^^^^

Content type ID related to the notfication

image
^^^^^

If any, the image's url

userData
^^^^^^^^

The userdata if any

