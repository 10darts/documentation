.. _users:

=====
Users
=====

Are all those individuals with whom you can communicate with because
they have your app installed in their device/s. You might also refer to them
as your "Clients".

It is very important that you connect your own data base client-id (your
internal id, email, Facebook id, etc.) with the `10darts "Client data" <https://10darts.com/app/users/imports>`_.

Every time a user downloads your app 10darts generates an anonymous
user ID. Once that user has signed up or logged in you need to inform
10darts SDK so the platform updates that user’s identification code,
access data and keys. You have specific instructions :ref:`here for Android <android-sdk-classes-sdk>`
and here for iOS.

These user data is the link between you and 10darts data base. You can
update this information too :ref:`through the API <api-devices-link>` or :ref:`importing a CSV file <users-import>`.

.. _users-import:

User Import
------------

You can import user files in CSV format delimited by commas. This
process will only update existing users in  the 10darts platform that have an
assigned ``client_data`` id and that match the values given in the imported
file.

The values in the file columns are:

- Field value ``client_data`` (string).
- Nickname (string), optional.
- Email (string), optional.
- First Name (string), optional.
- Last Name (string), optional.
- Geo-Position (string). Example: ``RID=4326;POINT (-99.0099141 19.335117)``, where the values are **longitude and latitude** in that order, opcional.
- Country (string), 2 character code with the country, optional.
- Tags (string), list of tags linked to the user separated by ``;`` Example: ``tag1;tag2``. Optional.
