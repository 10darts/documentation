.. _android-sdk-alert-location:


=======================
Filling alertNotEnabled
=======================


You can make the user aware that the location is not enabled and explain why is important to be enabled
Also is recommended that you provide a button redirecting the user to the location settings in the phone

Here is a simple example of how to do it using a dialog:

.. code:: java



            @Override
            public void alertNotEnabled(Activity activity)
            {
                AlertDialog alertDialog = new AlertDialog.Builder(MainActivity.this).create();
                alertDialog.setTitle("Location");
                alertDialog.setMessage("Location not enabled");
                alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "OK",
                    new DialogInterface.OnClickListener()
                    {
                        public void onClick(DialogInterface dialog, int which)
                        {
                            dialog.dismiss();
                        }
                    });
            alertDialog.show();
            //todo: add second button and redirect the user to location configuration.
            }
