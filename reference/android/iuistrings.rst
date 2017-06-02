.. _android-sdk-classes-iustrings:

IUIStrings
==========

.. java:package:: com.darts.sdk.client
   :noindex:

.. java:type:: public interface IUIStrings

   Created by jorgearimany on 19/4/17.

Methods
-------
getLocationExplanation
^^^^^^^^^^^^^^^^^^^^^^

.. java:method::  CharSequence getLocationExplanation(Context context)
   :outertype: IUIStrings

   Return a CharSequence explaining to the user why your app uses location and why permission should be granted. the returned value should be multilanguage aware.

   :param context: context to be used to access string resources
   :return: the message to be shown to the user when required in the correct language

