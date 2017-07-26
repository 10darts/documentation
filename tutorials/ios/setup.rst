.. _ios-sdk-setup:

=============
iOS SDK Setup
=============

The following instructions will guide you through the process of implementing
10darts SDK in your application. These instructions are based
on *XCode*.



. warning::

    Before proceeding you should have created a push certificate for your app
    please refer to : :ref:`Getting push certificate <ios_push_certificate>` and
    follow the steps.



On iOS 10 add a Notification Service Extension
----------------------------------------------

If you are targetting



Configure the application
-------------------------

1. Library
~~~~~~~~~~

* Close your Xcode project and open terminal and go to the project directory
* Run `pod init` in the terminal
* Edit the `Podfile` that has been created
* Add `pod 'TendartsSDK'` to your app target and  `pod 'TendartsSDK/AppExtension'` to your service extension target
* Run `pod repo update` and `pod install` from the terminal, this will create a '.xworkspace' file, from now on you shold always open the workspace instead of your project
* Open the created '.xworkspace' file



ojo onnotificationreceived, poner delegado tanto en app como en service


