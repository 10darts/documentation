.. _android-sdk-classes-igeolocation:

IGeolocation
============

.. java:package:: com.darts.sdk.client
   :noindex:

.. java:type:: public interface IGeolocation


Methods
-------

.. java:method::  void onUserAcceptedLocationPermission()
   :outertype: IGeolocation

   Called when the user has accepted location permission, note that asking for permissions depends on several factors and is not always asked to the user.

.. java:method::  void onUserRejectedLocationPermission()
   :outertype: IGeolocation

   Called when the user has rejected location permission, do not make any further UI interaction with the user regarding location permission.
