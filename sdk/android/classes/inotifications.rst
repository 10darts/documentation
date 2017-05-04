.. _android-sdk-classes-inotifications:

INotifications
==============

Documentation
=============

``public interface INotifications``
-----------------------------------

Notifications related interface

``void onNotificationShowed(Notification notification)``
--------------------------------------------------------

Called when a notification is showed to the user

-  **Parameters:** ``notification`` —

``void onNotificationShowedInList(Notification notification)``
--------------------------------------------------------------

Called when a notification is showed to the user in the stacked
notification

-  **Parameters:** ``notification`` —

``boolean onNotificationReceived(Notification notification)``
-------------------------------------------------------------

Called when a notification is received in the device

-  **Parameters:** ``notification`` —
-  **Returns:**

``boolean onNotificationClicked(Notification notification)``
------------------------------------------------------------

Called when a showed notification is clicked

-  **Parameters:** ``notification`` —
-  **Returns:**

``boolean onNotificationListCleared()``
---------------------------------------

Called when the notification list is cleared

-  **Returns:**

``void openNotification(Notification notification)``
----------------------------------------------------

Open the notification, start your desired intent configured properly

-  **Parameters:** ``notification`` — the clicked notification

``void openNotificationList()``
-------------------------------

Start the proper intent to show notification list, the user has clicked
on stacked notification

``public boolean notificationHasImage(Notification notification)``
------------------------------------------------------------------

Return true if the notification should have an image

-  **Parameters:** ``notification`` — notification containing data to
   build the notification
-  **Returns:** true if the notification should contain a custom image.

``public RemoteViews getCustomNotificationSmallView(Notification notification, Context context)``
-------------------------------------------------------------------------------------------------

if you need to load some data could be done later, return immediately,
override if you want to provide your custom notification view when
collapsed

-  **Parameters:**
-  ``notification`` —
-  ``context`` —
-  **Returns:**

``public RemoteViews getCustomNotificationLargeView(Notification notification, Context context)``
-------------------------------------------------------------------------------------------------

you should also return a view on getCustomNotificationSmallView if you
need to load some data could be done later, return immediately override
if you want to provide your large custom notification view when expanded

-  **Parameters:**
-  ``notification`` —
-  ``context`` —
-  **Returns:**

``public interface IBackgroundCustomNotificationLoaderListener``
----------------------------------------------------------------

To provide asynchronous custom notifications loading.

You must call either revertToStandardNotification or
customNotificationsReady once

``void revertToStandardNotification()``
---------------------------------------

Loading failed and should fallback to standard notification

``void customNotificationsReady(Bitmap bitmap)``
------------------------------------------------

All asynchronous loading and manipulations done, remote views are ready
to use

-  **Parameters:** ``bitmap`` — if provided this bitmap will be used in
   NotificationBuilder..setLargeIcon()

``void loadBackgroundCustomNotificationData( IBackgroundCustomNotificationLoaderListener listener)``
----------------------------------------------------------------------------------------------------

Called to start all your background custom notification loading, return
immediately.

You MUST call listener.revertToStandardNotification() or
listener.customNotificationsReady() once.

-  **Parameters:** ``listener`` — listener to call when you are ready

`back to Client <../README.md>`__
