.. _options:

========
Settings
========

10darts has pre-configured the settings we consider most appropriate for
our clients. Before you change them, we recommend that you wait until
you are familiar with 10darts features and algorithms and that you have run
some push notification campaigns and analyzed the results.

10darts platform can be easily customized. Here’s the list of
`settings <https://10darts.com/app/settings>`_ (remember, ``0`` is
deactivated, ``1`` is activated):

.. glossary::

    Activate/deactivate fake push notifications
        While you perform tests, check all the options in the 10darts platform.
        You can activate the “Fake push
        notifications” option to make sure none of your users receive a
        notification by accident.

    Activate/deactivate time zone restriction for Geo Ripple
        This will ensure that the while the 10darts :ref:`Geo Ripple Effect <campaigns-geo-ripple>` is operating, it does not send push messages during the night to your users.

    Daytime (hours) to start checking relevance
        This is the time at which 10darts starts checking the relevance of the push notifications sent (by default ``7am`` users local time).

    Daytime (hours) to stop checking relevance
        This is the time at which 10darts stops checking the relevance of the push notifications sent (by default ``11pm`` users local time).

    Maximum period to check Geo Ripple relevance
        Maximum time period over which 10darts checks the relevance of a :ref:`Geo Ripple Effect <campaigns-geo-ripple>` campaign (``28800`` seconds by default, 8 hours). After that time period 10darts stops checking the relevance of a push notification and stops the ripple effect.

    Maximum period to check Progressive Ripple relevance
        Maximum time period over which 10darts checks the relevance of a :ref:`Progressive Ripple Effect <campaigns-progressive-ripple>`  campaign (``28800`` seconds by default, 8 hours). After that time period 10darts stops checking the relevance of a push notification and stops the ripple effect.

    Maximum number of seconds from the creation of the notification to check relevance
        Maximum time over which the results of a campaign are monitored (``28800`` seconds by default, 8 hours).

    Activity relevance (in percentage) threshold
        Level of message content interaction increase, other than in the specific campaign and expressed in percentage, that will make 10darts algorithms determine the campaign as relevant and trigger the next level of notifications.

    Openings relevance (in percentage) threshold
        Amount of opened push notifications, expressed in percentage, that will make 10darts algorithms determine the campaign as relevant and trigger the next level of notifications.

    Campaign activity relevance (in percentage) threshold
        Level of push notification interaction increase in
        the campaign and expressed in percentage, that will trigger the
        Activity Relevance Threshold.

    Minimum size of the control group in Geo Ripple
        Minimum number of users that determine a control group. A control group is the users within a user target that meet a certain criteria and based on their level of interaction with the notification, determine that 10darts expands that notification to the rest of the target group.

    Number of days used to create default segments
        Number of days that 10darts takes into account for the purposes of distributing your user base into the different :ref:`pre-defined user segments <segments-reference>`, sleepers, zombies, stars, looky-loos and rookies.

    Number of hours from last activity to be able to be selected as active device
        Number of hours that 10darts takes into account for the purpose of defining an active device and be part of a control group.
