.. _pushes:

=================
Push Notification
=================

A push notification is a multimedia message sent to a user’s :ref:`Touchpoint <channels>`.

Here you have a list of the main terms related to push notifications you’ll find
in the 10darts dashboard:

Sent Push
---------

Is any notification that 10darts platform generates and transmits to your users
following your specifications.

Received Push
-------------

Notifications that 10darts SDK confirms that have reached your users.

Opened Push
-----------

Any received notification that 10darts SDK confirms that the user have clicked
on. Opened push notifications are the basis of the “`campaign success rate <https://10darts.com/app/dashboard>`_”.

Silent Push
-----------

Notifications that are sent to the users but not shown on their screen. Silent
push notifications do not require the user’s consent.

The purpose of these silent pushes is to verify that your users are still using
your application installed on their devices.

When 10darts gets a “non valid” answer from a user after sending a
notification, it considers that the user has churned (uninstalled your app).

10darts uses this information to determine the churn of each campaign and
analyzes the impact on your user base, cohorts analysis, loyalty analysis,
etc.
