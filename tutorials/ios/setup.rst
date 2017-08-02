.. _ios-sdk-setup:

=============
iOS SDK Setup
=============

The following instructions will guide you through the process of implementing
10darts SDK in your application. These instructions are based
on *XCode*.

.. warning::

    Before proceeding you should have created a push certificate for your app
    please refer to :ref:`Getting push certificate <ios_push_certificate>` and
    follow the steps.

On iOS 10 add a Notification Service Extension
----------------------------------------------

If you are targetting iOS 10 you should add a Notification Service Extension, to do it, go to file --> new --> target:

.. figure:: /_static/images/iosSE.png
   :alt: new Service Extension

Put a name to your new service extension and click finish:

.. figure:: /_static/images/iosSE2.png
   :alt: Service Extension name

When prompted, choose cancel scheme activation:

.. figure:: /_static/images/iosSE3.png
   :alt: Service Extension name

In your App project Capabilities, enable App gruoups and add a new one.

.. figure:: /_static/images/iosPC1.png
   :alt: New group

When prompted put 'group.TendartsSDK' as name, it's important that you use this name,

.. figure:: /_static/images/iosPC2.png
   :alt: New group

In your Service Extension capabilities enable App groups and add the 'group.TendartsSDK' group.

Replace the contents of NotificationService with:

.. code-block:: Objective-C

    #import "NotificationService.h"
    #import <TendartsSDK.h>
    #import <UIKit/UIKit.h>

    @interface NotificationService ()

    @property (nonatomic, strong) void (^contentHandler)(UNNotificationContent *contentToDeliver);
    @property (nonatomic, strong) UNMutableNotificationContent *bestAttemptContent;

    @end

    @implementation NotificationService

    - (void)didReceiveNotificationRequest:(UNNotificationRequest *)request withContentHandler:(void (^)(UNNotificationContent * _Nonnull))contentHandler {

        self.contentHandler = contentHandler;
        self.bestAttemptContent = [request.content mutableCopy];

        [TendartsSDK didReceiveNotificationRequest:request withContentHandler:contentHandler  withApiKey:@"api_key"];

     }

    - (void)serviceExtensionTimeWillExpire {
        // Called just before the extension will be terminated by the system.
        // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.

        [TendartsSDK serviceExtensionTimeWillExpire:self.bestAttemptContent withContentHandler:self.contentHandler];
    }

    @end


.. code-block:: Swift 3
    
    import UserNotifications
    import TendartsSDKSE

    class NotificationService: UNNotificationServiceExtension {
        var contentHandler: ((UNNotificationContent) -> Void)?
        var bestAttemptContent: UNMutableNotificationContent?

        override func didReceive(_ request: UNNotificationRequest, withContentHandler contentHandler: @escaping (UNNotificationContent) -> Void) {
            self.contentHandler = contentHandler
            bestAttemptContent = (request.content.mutableCopy() as? UNMutableNotificationContent)
            
            TendartsSDK.didReceive(request, withContentHandler: contentHandler, withApiKey: "api_key")
        
        }
    
        override func serviceExtensionTimeWillExpire() {
            // Called just before the extension will be terminated by the system.
            // Use this as an opportunity to deliver your "best attempt" at modified content, otherwise the original push payload will be used.
            
            TendartsSDK.serviceExtensionTimeWillExpire(bestAttemptContent, withContentHandler: contentHandler)
        
        
        }

    }




Replace `api_key` with your Api Key

.. note::

    The project will not compile until you perform the following step.


Configure the application
-------------------------

1. Library
~~~~~~~~~~

* Close your Xcode project and open terminal and go to the project directory.
* Run `pod init` in the terminal.
* Edit the `Podfile` that has been created.
* Add `pod 'TendartsSDK'` to your app target and  `pod 'TendartsSDKSE'` to your service extension target.
* Run `pod repo update` and `pod install` from the terminal, this will create a '.xworkspace' file, from now on you should always open the workspace instead of your project.
* Open the created '.xworkspace' file.


2. Add App Capabilities
~~~~~~~~~~~~~~~~~~~~~~~

* Select the root project and enable **Push Notifications** and **Background Modes**, check "Remote Notifications".

3. Initialize the SDK
~~~~~~~~~~~~~~~~~~~~~

* In your app's didFinishLaunchingWithOptions init the SDK:

.. code-block:: Objective-C

    #import <TendartsSDK.h>
    ...
    [TendartsSDK initTendartsUsingLaunchOptions:launchOptions withAPIKey:@"api_key" andConfig:nil];


.. code-block:: swift 3

    import TendartsSDK
    ...
    TendartsSDK.initTendarts(launchOptions: launchOptions, withAPIKey: "api_key", andConfig: nil);



Replace `api_key` with your Api Key


4. Add description strings on the app Info.plist
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

As 10darts uses location services you should add  NSLocationWhenInUseUsageDescription key with a string value explaining to the user how the app uses the location.


.. note::

    See :ref:`Adding Delegates <ios-delegate>` for being called when notifications arrive or when opened. by default if the notification has a deep link, it will be launched.
