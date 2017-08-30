.. _ios_push_certificate:

===============================
Getting an iOS Push Certificate
===============================


1. Request a certificate
------------------------

* Open Keychain Access from your Mac OS X and select *Request a Certificate From a Certificate Authority...* (Keychain Access -> Certificates Assistant -> Request a Certificate From a Certificate Authority...).

.. figure:: /_static/images/iosCer1.png
    :alt: Request certificate

* Select *Save to disk* and fill the requiered info:

.. figure:: /_static/images/iosCer2.png
    :alt: Request certificate

    The saved certificate will be used in the next step.


2. Enable Push Notifications on Developer Site
----------------------------------------------

* `Open the apple developer site <https://developer.apple.com/>`_ and go to **Certificates, Identifiers & Profiles**.

.. figure:: /_static/images/iosP1.png
    :alt: Apple developer console


* Go to App IDs and select your application, press **Edit**.

.. figure:: /_static/images/iosP2.png
    :alt: Apple developer console edit app


* Enable **Push Notifications** and click **Done**.

.. figure:: /_static/images/iosP3.png
    :alt: Apple developer console edit app


* Go to Certificates - All and add new certificate:

.. figure:: /_static/images/iosP4.png
    :alt: Apple developer console edit app


* Select **Apple Push Notification service SSL (Sandbox & Production)** and press Continue.

.. figure:: /_static/images/iosP5.png
    :alt: Apple developer console edit app


* Select your app id and press Continue.

.. figure:: /_static/images/iosP6.png
    :alt: Apple developer console edit app


* The create CSR page will open, click Continue and upload the .certSigningRequest created in step 1 and press Generate.

.. figure:: /_static/images/iosP8.png
    :alt: Apple developer console edit app


* When done click on Download.

.. figure:: /_static/images/iosP7.png
    :alt: Apple developer console edit app


* Double click the downloaded file, the Keychain Access app will be launched, select the Apple Push Services certificate for your application and right click on it, and select Export.

.. figure:: /_static/images/iosP9.png
    :alt: Export Certificate


* Upload the exported .p12 file to your 10 darts console, use it for APNS and APNS_SANDBOX platforms.
