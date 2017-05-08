.. _android-sdk-classes-iustrings:

IUIStrings
==========

``public interface IUIStrings``
-------------------------------

Strings to be presented to the user

``CharSequence getLocationExplanation(Context context)``
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Return a CharSequence explaining to the user why your app uses location
and why permission should be granted.

The returned value should be multi-language aware.

-  **Parameters:** ``context`` — context to be used to access string
   resources
-  **Returns:** the message to be shown to the user when required in the
   correct language
