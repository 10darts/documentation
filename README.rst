====================================
Repository for 10Darts documentation
====================================

Write documentation
-------------------

The documentation is written using `reStructuredText <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`_ as markup language, and compiled to HTML using `Sphinx <http://www.sphinx-doc.org/en/stable/index.html>`_.

Insall requirements
^^^^^^^^^^^^^^^^^^^

You only have to do this once:

.. code-block:: bash

    $ pipenv install

Translations
^^^^^^^^^^^^

First, activate the virtualenv:

.. code-block:: bash

    $ pipenv shell

Extract document’s translatable messages into pot files:

.. code-block:: bash

    (10darts-documentation) $ make gettext

Setup/update locale:

.. code-block:: bash

    (10darts-documentation) $ sphinx-intl update -p _build/gettext -l es -l en

Build mo files and make translated document:

.. code-block:: bash

    (10darts-documentation) $ sphinx-intl build
    (10darts-documentation) $ make -e SPHINXOPTS="-D language='en'" html

Compile documentation
^^^^^^^^^^^^^^^^^^^^^

To create the HTML version of the documentation, run these commands:

.. code-block:: bash

    $ pipenv shell
    (10darts-documentation) $ make html

Upload
^^^^^^

After commit and push run the following command:

.. code-block:: bash

    $ pipenv shell
    (10darts-documentation) $ ./deploy.sh
