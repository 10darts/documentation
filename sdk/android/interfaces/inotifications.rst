INotifications
==============

``public interface INotifications``
-----------------------------------

Notifications related interface

``boolean onNotificationReceived(Push push)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  **Parameters:** ``push`` —
-  **Returns:**

``boolean onNotificationClicked(Push push)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  **Parameters:** ``push`` —
-  **Returns:**

``boolean onNotificationDiscarded(Push push)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  **Parameters:** ``push`` —
-  **Returns:**

``boolean onNotificationListCleared()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

-  **Returns:**

``public boolean notificationHasImage(Push push)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return true if the notification should have an image

-  **Parameters:** ``push`` — push containing data to build the
   notification
-  **Returns:** true if the notification should contain a custom image.

``public RemoteViews getCustomNotificationSmallView(Push push, Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

if you need to load some data could be done later, return immediately,
override if you want to provide your custom notification view when
collapsed

-  **Parameters:**
-  ``push`` —
-  ``context`` —
-  **Returns:**

``public RemoteViews getCustomNotificationLargeView(Push push, Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

you should also return a view on getCustomNotificationSmallView if you
need to load some data could be done later, return immediately override
if you want to provide your large custom notification view when expanded

-  **Parameters:**
-  ``push`` —
-  ``context`` —
-  **Returns:**
