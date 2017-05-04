.. _android-sdk-classes-sdk:

SDK
===

Documentation
-------------

``public class SDK``
~~~~~~~~~~~~~~~~~~~~

Sdk class enables customization of the SDK

``public SDK stackNotifications(boolean stackNotifications)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure to show stacked notifications or not defaults to true

-  **Parameters:** ``stackNotifications`` — if true notifications are
   stacked

   .. raw:: html

      <p>

-  **Returns:** SDK instance so you can concatenate calls

``public SDK alwaysShowLastNotification(boolean alwaysShowLastNotification)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure to show always the last notification, useful in combination
with stackNotifications defaults to true

-  **Parameters:** ``alwaysShowLastNotification`` — If the last
   notification should allways been shown
-  **Returns:** SDK instance so you can concatenate calls

``public SDK limitNotificationSoundAndVibrationTime(    boolean limitNotificationSoundAndVibrationTime)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure to limit when notification will make sound and vibration
defaults to true if enabled notifications will only make sound between
[firstHour ... lastHour)

-  **Parameters:** ``limitNotificationSoundAndVibrationTime`` — If the
   sound and vibration will be limited

   .. raw:: html

      <p>

-  **Returns:** SDK instance so you can concatenate calls
-  **See also:**
-  notificationSoundAndVibrationFirstHour(int)
-  notificationSoundAndVibrationLastHour(int)

   .. raw:: html

      <p>

``public SDK notificationSoundAndVibrationFirstHour(int firstHour)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure to set the first hour that notifications will make sound and
vibration Will only taken into account if {@link
#limitNotificationSoundAndVibrationTime(boolean)} is set to true

-  **Returns:** SDK instance so you can concatenate calls
-  **Parameters:** ``firstHour`` — first hour when notifications will
   make sound and vibration. [0..23]
-  **See also:** #limitNotificationSoundAndVibrationTime(boolean)

``public SDK notificationSoundAndVibrationLastHour(int lastHour)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Configure to set the first hour that notifications will make sound and
vibration Will only taken into account if {@link
#limitNotificationSoundAndVibrationTime(boolean)} is set to true

-  **Parameters:** ``lastHour`` — last hour when notifications make
   sound and vibration. [0..23]
-  **Returns:** SDK instance so you can concatenate calls
-  **See also:** #limitNotificationSoundAndVibrationTime(boolean)

``public SDK notificationColorResource(     int colorResource)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set the color resource to use in Notifications

-  **Parameters:** ``colorResource`` — the color to be used

-  **Returns:** SDK instance so you can concatenate calls

``public SDK setSmallIconResource(int smallIconResource)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set the small icon resource

-  **Parameters:** ``smallIconResource`` — small icon resource
-  **Returns:** SDK instance so you can concatenate calls

``public SDK setLargeIconResource(int largeIconResource)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set the large icon resource

-  **Parameters:** ``largeIconResource`` — large icon resource
-  **Returns:** SDK instance so you can concatenate calls

``public SDK stackedNotificationTitle( CharSequence title)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the stacked notification Title

-  **Parameters:** ``title`` — the title to be used
-  **Returns:** SDK instance so you can concatenate calls

``public SDK stackedNotificationContent(String content)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the stacked notifications content

-  **Parameters:** ``content`` — content, if you have an '%d' in the
   string it will be formatted with

   the number of pending notifications
-  **Returns:** SDK instance so you can concatenate calls

``public SDK viewStackedIconResource(int iconResource)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the view icon resource in stacked notification

-  **Parameters:** ``iconResource`` — the icon resource, if not set
   defaults to android.R.drawable.ic\_menu\_view
-  **Returns:** SDK instance so you can concatenate calls

``public SDK viewStackdString(CharSequence string)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the view string in stacked notification

-  **Parameters:** ``string`` —
-  **Returns:** SDK instance so you can concatenate calls

``public SDK cancelStackedIconResource( int iconResource)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the cancel button icon in stacked notification

-  **Parameters:** ``iconResource`` — the icon resource to be used, if
   not set defaults to android.R.drawable.ic\_menu\_close\_clear\_cancel
-  **Returns:** SDK instance so you can concatenate calls

``public int getCancelStackedIconResource()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

android.R.drawable.ic\_menu\_close\_clear\_cancel

-  **Returns:**

``public SDK cancelStackedString ( CharSequence string)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

set the cancel button string in stacked notification

-  **Parameters:** ``string`` —
-  **Returns:** SDK instance so you can concatenate calls

``public static void onRequestPermissionsResult(int requestCode, String permissions[], int[] grantResults, Context context``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

On Api >= 23 override on main activity and call this method

-  **Parameters:**
-  ``requestCode`` — request code provided in main
   onRequestPermissionsResult
-  ``permissions`` — permission provided in main
   onRequestPermissionsResult
-  ``grantResults`` — results provided in onRequestPermissionsResult
-  ``context`` — context, e.g getApplicationContext(), should not be
   null

``public static void onResume(final Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

``public static void onPause()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

``public static void onStart()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

``public static void onStop()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

``public static void onDestroy()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

``public static void onCreate(Bundle savedInstanceState,         final Activity activity,         Communications.ILocationAlerter locationAlerter)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

-  **Parameters:**
-  ``savedInstanceState`` — saved instance state
-  ``activity`` — instance of your main activity
-  ``locationAlerter`` — location alerter

``public static void onSaveInstanceState(Bundle outState)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

-  **Parameters:** ``outState`` —

``public static void onRestoreInstanceState(final Bundle savedInstanceState, final Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

override on main activity and call this method

-  **Parameters:**
-  ``savedInstanceState`` —
-  ``context`` —

``public static void deleteNotificationFromList(String notificationCode, Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete a single notification from the stored list

-  **Parameters:**
-  ``notificationCode`` — notification code
-  ``context`` — context

``public static void deleteAllNotifications(Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Delete all notifications from stored list

-  **Parameters:** ``context`` — context

``public static ArrayList<Notification> getNotificationsList(Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Returns a list with the stored notifications

-  **Parameters:** ``context`` —
-  **Returns:** the notification list

``public static void notifyNotificationRead(String notificationCode, final Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Notify that a notification has been read

-  **Parameters:**
-  ``notificationCode`` — the code of the read notification
-  ``context`` — context

``public static void notifyAllNotificationsRead(final Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Notify that all the notifications has been read

-  **Parameters:** ``context`` — context

``public static class GeoLocation``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Class that holds geolocation info

``public double latitude``
~~~~~~~~~~~~~~~~~~~~~~~~~~

Latitude

``public double longitude``
~~~~~~~~~~~~~~~~~~~~~~~~~~~

Longitude

``public double precision``
~~~~~~~~~~~~~~~~~~~~~~~~~~~

precision in meters

We define accuracy as the radius of 68% confidence. In other words, if
you draw a circle centered at this location's latitude and longitude,
and with a radius equal to the accuracy, then there is a 68% probability
that the true location is inside the circle.

In statistical terms, it is assumed that location errors are random with
a normal distribution, so the 68% confidence circle represents one
standard deviation. Note that in practice, location errors do not always
follow such a simple distribution.

This accuracy estimation is only concerned with horizontal accuracy.

``public String provider``
~~~~~~~~~~~~~~~~~~~~~~~~~~

The provider of the location

``public String source``
~~~~~~~~~~~~~~~~~~~~~~~~

location source

``public GeoLocation(double latitude,       double longitude,       double precision,       String provider,       String source       )``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Constructor

-  **Parameters:**
-  ``latitude`` —
-  ``longitude`` —
-  ``precision`` —
-  ``provider`` —
-  ``source`` —

``public static GeoLocation getCurrentGeoLocation()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Call this method to get the current geolocation

-  **Returns:** the current geolocation

``public interface IGeoLocationReceiver``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

A receiver that will be notified when a new location is available

``void onNewLocation(GeoLocation location)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

New location arrived

-  **Parameters:** ``location`` — the new location

``public static void registerGeoLocationReceiver(IGeoLocationReceiver receiver)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Set the Geolocation receiver, if there is already set, it will be
overwritten with this one instance will not be kept, so make sure it's
not garbage collected while you need it.

-  **Parameters:** ``receiver`` — the receiver to be called

``public static void unregisterGeoLocationReceiver()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Remove the geolocation receiver

``public static void disableGeolocationUpdates()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Disable geolocation updates

``public static void enableGeolocationUpdates()``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Enable geolocation updates, by default are enabled

``public static void changeNotificationsEnabled(boolean enabled,Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Call this method to enable/disable notifications on current device/app

-  **Parameters:**
-  ``enabled`` — if the notifications should be enabled, by default are
   enabled
-  ``context`` — context

``public static boolean getNotificationsEnabled(Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Get a boolean indicating if the notifications are enabled on current
device/app

-  **Parameters:** ``context`` —
-  **Returns:** if the notifications are enabled

``public interface IUserResponseObserver``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Observer on user calls

``void onOk()``
~~~~~~~~~~~~~~~

Called when the operation has been done correctly

``void onFail(String reason)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called when the operation failed

-  **Parameters:** ``reason`` — reason of the fail

``public static void linkUserToDevice(final IUserResponseObserver observer, final Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Call this to link the user to the device, call it after the user has
been set

-  **Parameters:**
-  ``observer`` — observer to be called when the operation is done
-  ``context`` — context

``public static void registerUser(String email, String firstName, String lastName, String password,      final IUserResponseObserver observer,          Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called to register the user

-  **Parameters:**
-  ``email`` — e-mail
-  ``firstName`` — first name
-  ``lastName`` — last name
-  ``password`` — password to use
-  ``observer`` — observer to be called when the operation is done
-  ``context`` — context

``public static void modifyUser(String email, String firstName, String lastName, String password,      final IUserResponseObserver observer, Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Modify user data

only fill the fields you want to modify, any null parameter will be kept
unmodified

-  **Parameters:**
-  ``email`` — e-mail
-  ``firstName`` — first name
-  ``lastName`` — last name
-  ``password`` — password
-  ``observer`` — observer to be called when the operation is done

``public interface ILocationAlerter``
=====================================

Location alerter to redirect user to configuration

``void alertNotEnabled(Activity parent)``
=========================================

Alert the user that location is not enabled, good place to open device
location settings for the user

-  **Parameters:** ``parent`` — could be null.
