.. _android-sdk-classes-sdk:

=================
Class TendartsSDK
=================

.. java:type:: public class TendartsSDK

    TendartsSDK class enables customization of the SDK.

Methods
-------

.. java:method:: public TendartsSDK stackNotifications(boolean stackNotifications)
    :outertype: TendartsSDK

    Configure to show stacked notifications or not defaults to true.

    :param stackNotifications: if true notifications are stacked
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK alwaysShowLastNotification(boolean alwaysShowLastNotification)
    :outertype: TendartsSDK

    Configure to show always the last notification, useful in combination
    with stackNotifications defaults to true.

    :param alwaysShowLastNotification: If the last notification should always been shown
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK limitNotificationSoundAndVibrationTime(boolean limitNotificationSoundAndVibrationTime)
    :outertype: TendartsSDK

    Configure to limit when notification will make sound and vibration
    defaults to true if enabled notifications will only make sound between
    [firstHour ... lastHour).

    :param limitNotificationSoundAndVibrationTime: If the sound and vibration will be limited
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK notificationSoundAndVibrationFirstHour(int firstHour)
    :outertype: TendartsSDK

    Configure to set the first hour that notifications will make sound and
    vibration Will only taken into account if ``limitNotificationSoundAndVibrationTime`` is set to true.

    :param firstHour: first hour when notifications will make sound and vibration. [0..23]
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK notificationSoundAndVibrationLastHour(int lastHour)
    :outertype: TendartsSDK

    Configure to set the first hour that notifications will make sound and
    vibration Will only taken into account if ``limitNotificationSoundAndVibrationTime`` is set to true.

    :param lastHour: last hour when notifications make sound and vibration. [0..23]
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK notificationColorResource(int colorResource)
    :outertype: TendartsSDK

    Set the color resource to use in Notifications.

    :param colorResource: the color to be used
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK setSmallIconResource(int smallIconResource)
    :outertype: TendartsSDK

    Set the small icon resource.

    :param smallIconResource: small icon resource
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK setLargeIconResource(int largeIconResource)
    :outertype: TendartsSDK

    Set the large icon resource.

    :param largeIconResource: large icon resource
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK stackedNotificationTitle(CharSequence title)
    :outertype: TendartsSDK

    Set the stacked notification title.

    :param title: the title to be used
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK stackedNotificationContent(String content)
    :outertype: TendartsSDK

    Set the stacked notifications content.

    :param content: content, if you have an '%d' in the string it will be formatted with the number of pending notifications
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK viewStackedIconResource(int iconResource)
    :outertype: TendartsSDK

    Set the view icon resource in stacked notification.

    :param iconResource: the icon resource, if not set defaults to android.R.drawable.ic\_menu\_view
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK viewStackdString(CharSequence string)
    :outertype: TendartsSDK

    Set the view string in stacked notification.

    :param string:
    :return: TendartsSDK instance so you can concatenate calls

.. java:method:: public TendartsSDK cancelStackedIconResource( int iconResource)
    :outertype: TendartsSDK

    Set the cancel button icon in stacked notification.

    :param iconResource: the icon resource to be used, if not set defaults to android.R.drawable.ic\_menu\_close\_clear\_cancel
    :returns: TendartsSDK instance so you can concatenate calls

.. java:method:: public int getCancelStackedIconResource()
    :outertype: TendartsSDK

    android.R.drawable.ic\_menu\_close\_clear\_cancel

    :returns:

.. java:method:: public TendartsSDK cancelStackedString (CharSequence string)
    :outertype: TendartsSDK

    Set the cancel button string in stacked notification.

    :param string:
    :returns: TendartsSDK instance so you can concatenate calls

.. java:method:: public static void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults, Context context)
    :outertype: TendartsSDK

    On Api >= 23 override on main activity and call this method.

    :param requestCode: request code provided in main onRequestPermissionsResult
    :param permissions: permission provided in main onRequestPermissionsResult
    :param grantResults: results provided in onRequestPermissionsResult
    :param context: context, e.g getApplicationContext(), should not be null

.. java:method:: public static void onResume(final Context context)
    :outertype: TendartsSDK

    Override on main activity and call this method.

.. java:method:: public static void onPause()
    :outertype: TendartsSDK

    Override on main activity and call this method.

.. java:method:: public static void onStart()
    :outertype: TendartsSDK

    Override on main activity and call this method.

.. java:method:: public static void onStop()
    :outertype: TendartsSDK

    Override on main activity and call this method.

.. java:method:: public static void onDestroy()
    :outertype: TendartsSDK

    Override on main activity and call this method.

.. java:method:: public static void onCreate(Bundle savedInstanceState, final Activity activity, Communications.ILocationAlerter locationAlerter)
    :outertype: TendartsSDK

    Override on main activity and call this method.

    :param savedInstanceState: saved instance state
    :param activity: instance of your main activity
    :param locationAlerter: location alerter

.. java:method:: public static void onSaveInstanceState(Bundle outState)
    :outertype: TendartsSDK

    Override on main activity and call this method.

    :param outState:

.. java:method:: public static void onRestoreInstanceState(final Bundle savedInstanceState, final Context context)
    :outertype: TendartsSDK

    Override on main activity and call this method.

    :param savedInstanceState:
    :param context:

.. java:method:: public static void deleteNotificationFromList(String notificationCode, Context context)
    :outertype: TendartsSDK

    Delete a single notification from the stored list.

    :param notificationCode: notification code
    :param context: context

.. java:method:: public static void deleteAllNotifications(Context context)
    :outertype: TendartsSDK

    Delete all notifications from stored list.

    :param context: context

.. java:method:: public static ArrayList<Notification> getNotificationsList(Context context)
    :outertype: TendartsSDK

    Returns a list with the stored notifications.

    :param context:
    :return: the notification list

.. java:method:: public static void notifyNotificationRead(String notificationCode, final Context context)
    :outertype: TendartsSDK

    Notify that a notification has been read.

    :param notificationCode: the code of the read notification
    :param context: context

.. java:method:: public static void notifyAllNotificationsRead(final Context context)

    Notify that all the notifications has been read

    :param context: context

.. java:type:: public static class GeoLocation
    :outertype: TendartsSDK

    Class that holds geolocation info

    .. java:field:: public double latitude
        :outertype: TendartsSDK.GeoLocation

        Latitude

    .. java:field:: public double longitude
        :outertype: TendartsSDK.GeoLocation

        Longitude

    .. java:field:: public double precision
        :outertype: TendartsSDK.GeoLocation

        Precision in meters.

        We define accuracy as the radius of 68% confidence. In other words, if
        you draw a circle centered at this location's latitude and longitude,
        and with a radius equal to the accuracy, then there is a 68% probability
        that the true location is inside the circle.

        In statistical terms, it is assumed that location errors are random with
        a normal distribution, so the 68% confidence circle represents one
        standard deviation. Note that in practice, location errors do not always
        follow such a simple distribution.

        This accuracy estimation is only concerned with horizontal accuracy.

    .. java:field:: public String provider
        :outertype: TendartsSDK.GeoLocation

        The provider of the location

    .. java:field:: public String source
        :outertype: TendartsSDK.GeoLocation

        Location source.

    .. java:constructor:: public GeoLocation(double latitude, double longitude, double precision, String provider, String source)
        :outertype: TendartsSDK.GeoLocation

        Constructor.

        :param latitude:
        :param longitude:
        :param precision:
        :param provider:
        :param source:

.. java:method:: public static GeoLocation getCurrentGeoLocation()
    :outertype: TendartsSDK

    Call this method to get the current geolocation

    :return: the current geolocation

.. java:type:: public interface IGeoLocationReceiver
    :outertype: TendartsSDK

    A receiver that will be notified when a new location is available.

    .. java:method:: void onNewLocation(GeoLocation location)
        :outertype: TendartsSDK.IGeoLocationReceiver

        New location arrived.

        :param location: the new location

.. java:method:: public static void registerGeoLocationReceiver(IGeoLocationReceiver receiver)
    :outertype: TendartsSDK

    Set the Geolocation receiver, if there is already set, it will be
    overwritten with this one instance will not be kept, so make sure it's
    not garbage collected while you need it.

    :param receiver: the receiver to be called

.. java:method:: public static void unregisterGeoLocationReceiver()
    :outertype: TendartsSDK

    Remove the geolocation receiver.

.. java:method:: public static void disableGeolocationUpdates()
    :outertype: TendartsSDK

    Disable geolocation updates.

.. java:method:: public static void enableGeolocationUpdates()
    :outertype: TendartsSDK

    Enable geolocation updates, by default are enabled.

.. java:method:: public static void changeNotificationsEnabled(boolean enabled, Context context)
    :outertype: TendartsSDK

    Call this method to enable/disable notifications on current device/app.

    :param enabled: if the notifications should be enabled, by default are enabled
    :param context: context

.. java:method:: public static boolean getNotificationsEnabled(Context context)
    :outertype: TendartsSDK

    Get a boolean indicating if the notifications are enabled on current
    device/app.

    :param context:
    :returns: if the notifications are enabled

.. java:type:: public interface IUserResponseObserver
    :outertype: TendartsSDK

    Observer on user calls.

    .. java::method:: void onOk()
        :outertype: TendartsSDK.IUserResponseObserver

        Called when the operation has been done correctly

    .. java:method:: void onFail(String reason)
        :outertype: TendartsSDK.IUserResponseObserver

        Called when the operation failed.

        :param reason: reason of the fail

.. java:method:: public static void linkUserToDevice(final IUserResponseObserver observer, final Context context)
    :outertype: TendartsSDK

    Call this to link the user to the device, call it after the user has
    been set.

    :param observer: observer to be called when the operation is done
    :param context: context

.. java:method:: public static void registerUser(String email, String firstName, String lastName, String password, final IUserResponseObserver observer, Context context)
    :outertype: TendartsSDK

    Called to register the user

    :param email: e-mail
    :param firstName: first name
    :param lastName: last name
    :param password: password to use
    :param observer: observer to be called when the operation is done
    :param context: context


.. java:method:: public static void modifyUser(String email, String firstName, String lastName, String password, final IUserResponseObserver observer, Context context)
    :outertype: TendartsSDK

    Modify user data.

    Only fill the fields you want to modify, any null parameter will be kept
    unmodified.

    :param email: e-mail
    :param firstName: first name
    :param lastName: last name
    :param password: password to use
    :param observer: observer to be called when the operation is done

.. java:type:: public interface ILocationAlerter
    :outertype: TendartsSDK

    Location alerter to redirect user to configuration.

    .. java:method:: void alertNotEnabled(Activity parent)
        :outertype: TendartsSDK.ILocationAlerter

        Alert the user that location is not enabled, good place to open device
        location settings for the user

        :param parent: could be null.
