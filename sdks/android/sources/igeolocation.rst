.. _android-sdk-classes-igeolocation:

IGeolocation
============

public interface IGeolocation
-----------------------------

Geolocation related functions

void onUserRejectedLocationPermission()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called when the user has rejected location permission, do not make any
further UI interaction with the user regarding location permission

void onUserAcceptedLocationPermission()
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Called when the user has accepted location permission, note that asking
for permissions depends on several factors and is not always asked to
the user.
