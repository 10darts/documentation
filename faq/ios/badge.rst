=====
Badge
=====

You can reset the badge by calling:

**Objective-C**

.. code-block:: Objective-C

  [TendartsSDK resetBadge:^{
      // Succeeded
  } onError:^(NSString * _Nullable error) {
      // Error
  }];

This will mark all the unread notifications as read.
