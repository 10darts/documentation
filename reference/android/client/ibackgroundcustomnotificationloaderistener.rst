.. java:import:: android.content Context

.. java:import:: android.graphics Bitmap

.. java:import:: android.widget RemoteViews

.. java:import:: com.darts.sdk Model.Notification

==========================================================
INotifications.IBackgroundCustomNotificationLoaderListener
==========================================================

.. java:package:: com.darts.sdk.client
   :noindex:

.. java:type:: public interface IBackgroundCustomNotificationLoaderListener
   :outertype: INotifications

   To provide asynchronous custom notifications loading. You must call either revertToStandardNotification or customNotificationsReady once.

Methods
-------

.. java:method::  void customNotificationsReady(Bitmap bitmap)
   :outertype: INotifications.IBackgroundCustomNotificationLoaderListener

   All asynchronous loading and manipulations done, remote views are ready to use.

   :param bitmap: if provided this bitmap will be used in NotificationBuilder.setLargeIcon()

.. java:method::  void revertToStandardNotification()
   :outertype: INotifications.IBackgroundCustomNotificationLoaderListener

   Loading failed and should fallback to standard notification.
