.. _ios-sdk-reference:

=======
iOS SDK
=======

This is the reference of the iOS SDK source code. 

Here you can find all the SDK methods and features.

Public Methods
--------------

.. code-block:: objc 

		- (void)modifyUserEmail:(NSString *_Nullable)email
			      firstName:(NSString *_Nullable)firstName
			       lastName:(NSString *_Nullable)lastName
			       password:(NSString *_Nullable)password
			      onSuccess:(TDOnSuccess _Nullable)successHandler
			        onError:(TDOnError _Nullable)errorHandler;


Modify user data.

Parameters
^^^^^^^^^^

 	``email`` 
 		User e-mail

 	``firstName``
 		First name

	``lastName``
		Last name

	``password``
		Password to use

	``successHandler``
		Callback when success

	``errorHandler``
		Callback when error received

.. code-block:: objc 

		+ (void)markNotificationRead:(NSString *_Nullable)notificationId
                 		   onSuccess:(TDOnSuccess _Nullable)successHandler
				     onError:(TDOnError _Nullable)errorHandler;


Mark notification as readed.

Parameters
^^^^^^^^^^

 	``notificationId`` 
 		notification id to mark as readed

	``successHandler``
		Callback when success

	``errorHandler``
		Callback when error received

.. code-block:: objc 

		+ (void)sendDeviceKey:(NSString *_Nullable)aKeykind:(NSNumber *_Nullable)aKind
                		value:(NSString *_Nullable)aValue
            		    onSuccess:(TDOnSuccess _Nullable)successHandler
              		      onError:(TDOnError _Nullable)errorHandler;


Create or update a key/value associated with the Device.

Parameters
^^^^^^^^^^

 	``aKey`` 
 		Name key that shows the name of the key that is linked to

 	``aKind``
 		A linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, 4: list

	``aValue``
		Text value chain representation to be linked to the key.

	``successHandler``
		Callback when success

	``errorHandler``
		Callback when error received


.. code-block:: objc 

		+ (void)sendPersonaKey:(NSString *_Nullable)aKey
           		          kind:(NSNumber *_Nullable)aKind
                 		 value:(NSString *_Nullable)aValue
             		     onSuccess:(TDOnSuccess _Nullable)successHandler
               		       onError:(TDOnError _Nullable)errorHandler;


Create or update a key/value associated with the User.

Parameters
^^^^^^^^^^

 	``aKey`` 
 		Name key that shows the name of the key that is linked to

 	``aKind``
 		A linked value, which that value is, 0: float, 1: int, 2: string, 3: bool, 4: list

	``aValue``
		Text value chain representation to be linked to the key.

	``successHandler``
		Callback when success

	``errorHandler``
		Callback when error received


.. code-block:: objc 

		+ (void)linkDeviceWithUserIdentifier:(NSString * _Nonnull)userId
					   onSuccess:(TDOnSuccess _Nullable )successHandler
					     onError:(TDOnError _Nullable )errorHandler;


Link the device with a user identifier.

Parameters
^^^^^^^^^^

 	``userId`` 
 		Your own new user identifier

	``onSuccess``
		Callback when success

	``onError``
		Callback when error received


.. code-block:: objc 

		+ (void)disableAutomaticallyReadAllNotification:(BOOL)disable;


Disable mark all the notification as readed after opening the app.

Parameters
^^^^^^^^^^

 	``disable`` 
 		Enable or disable the feature


.. code-block:: objc 

		+ (BOOL)isAutomaticallyReadAllNotificationDisabled;


Check if the automatically mark as readed feature is disabled.


.. code-block:: objc 

		+ (void)resetBadge:(TDOnSuccess _Nullable )successHandler
			   onError:(TDOnError _Nullable )errorHandler;


Resets the app badge to zero.

Parameters
^^^^^^^^^^

	``onSuccess``
		Callback when success

	``onError``
		Callback when error received

.. code-block:: objc 

		+ (void)setDelegate:(_Nullable id  <TendartsDelegate>)delegate;


Set SDK delegate owner.

Parameters
^^^^^^^^^^

 	``delegate`` 
 		Class with TendartsDelegate


Delegate
--------

.. code-block:: objc 

		- (void)onNotificationReceived:(TDNotification* _Nonnull)notification;


Notification received delegate, called after receive a notification. 

Parameters
^^^^^^^^^^

 	``notification`` 
 		The TDNotification received


.. code-block:: objc 

		- (void)onNotificationOpened:(TDNotification* _Nonnull)notification;


Notification open delegate, called after open a notification. 

Parameters
^^^^^^^^^^

 	``notification`` 
 		The TDNotification opened


.. code-block:: objc 

		- (void)onLogEventWithCategory:(NSString *_Nullable)category 
					  type:(NSString *_Nullable)type
		    		    andMessage:(NSString *_Nullable)message;


Event log delegate, called after each operation. 

Parameters
^^^^^^^^^^

 	``category`` 
 		Category of the received event

 	``type``
 		Type of the received event

	``message``
		Message of the received event


.. code-block:: objc 

		- (void)onActionSelected:(NSString *_Nullable)selectedId;


Action delegate, called after a button option is selected from a notification. 

Parameters
^^^^^^^^^^

 	``selectedId`` 
 		Id from the selected notification action