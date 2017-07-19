.. _android-sdk-classes-inotifications:


.. java:import:: com.darts.sdk Model.Notification

INotifications
==============

.. java:package:: com.darts.sdk.client
    :noindex:

.. java:type:: public interface INotifications

    Notifications related interface.

Methods
-------

.. java:method:: public RemoteViews getCustomNotificationLargeView(Notification notification, Context context)
    :outertype: INotifications

    You should also return a view on getCustomNotificationSmallView if you need to load some data could be done later, return immediately override if you want to provide your large custom notification view when expanded.

    :param notification:
    :param context:

.. java:method:: public RemoteViews getCustomNotificationSmallView(Notification notification, Context context)
    :outertype: INotifications

    If you need to load some data could be done later, return immediately, override if you want to provide your custom notification view when collapsed.

    :param notification:
    :param context:

.. java:method::  void loadBackgroundCustomNotificationData(IBackgroundCustomNotificationLoaderListener listener, Notification notification, RemoteViews rv, RemoteViews rvBig, Context context)
    :outertype: INotifications

    Called to start all your background custom notification loading, return immediately. You MUST call listener.revertToStandardNotification() or listener.customNotificationsReady() once.

    :param listener: listener to call when you are ready
    :param notification: notification to load data
    :param rv: RemoteViews to be filled
    :param rvBig: RemoteViews to be filled
    :param context: context to use

.. java:method:: public boolean notificationHasImage(Notification notification)
    :outertype: INotifications

    Return true if the notification should have an image.

    :param notification: notification containing data to build the notification
    :return: true if the notification should contain a custom image.

.. java:method::  boolean onNotificationClicked(Notification notification)
    :outertype: INotifications

    Called when a showed notification is clicked.

    :param notification:

.. java:method::  boolean onNotificationListCleared()
    :outertype: INotifications

    Called when the notification list is cleared.

.. java:method::  boolean onNotificationReceived(Notification notification)
    :outertype: INotifications

    Called when a notification is received in the device.

    :param notification:

.. java:method::  void onNotificationShowed(Notification notification)
    :outertype: INotifications

    Called when a notification is showed to the user.

    :param notification:

.. java:method::  void onNotificationShowedInList(Notification notification)
    :outertype: INotifications

    Called when a notification is showed to the user in the stacked notification.

    :param notification:

.. java:method::  boolean openNotification(Notification notification, Context context)
    :outertype: INotifications

    Open the notification, start your desired intent configured properly, return true to override deep url launching.

    :param notification: the clicked notification
    :param context: context to be used
    :return: true if client opens the notification overriding SDK default behaviour

.. java:method::  void openNotificationList(Context context)
    :outertype: INotifications

    Start the proper intent to show notification list, the user has clicked on stacked notification.

    :param context: context to be used

.. java:type:: public interface IBackgroundCustomNotificationLoaderListener
    :outertype: INotifications

    To provide asynchronous custom notifications loading. You must call either revertToStandardNotification or customNotificationsReady once.

    .. java:method::  void customNotificationsReady(Bitmap bitmap)
        :outertype: INotifications.IBackgroundCustomNotificationLoaderListener

        All asynchronous loading and manipulations done, remote views are ready to use.

        :param bitmap: if provided this bitmap will be used in NotificationBuilder.setLargeIcon()

    .. java:method::  void revertToStandardNotification()
        :outertype: INotifications.IBackgroundCustomNotificationLoaderListener

        Loading failed and should fallback to standard notification.
