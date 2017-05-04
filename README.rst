====================================
Repository for 10Darts documentation
====================================

Write documentation
-------------------

The documentation is written using `reStructuredText <http://docutils.sourceforge.net/docs/user/rst/quickref.html>`_ as markup language, and compiled to HTML using `Sphinx <http://www.sphinx-doc.org/en/stable/index.html>`_.

Build documentation
-------------------

To build the documentation, you need to be able to run Python code in your machine. We recommend to use `virtualenvwrapper <https://virtualenvwrapper.readthedocs.io/en/latest/>`_ to handle *virtual envs* with Python, and we are going to asume you have installed it.

Insall requirements
^^^^^^^^^^^^^^^^^^^

You only have to do this once:

.. code-block:: bash

    $ mkvirtualenv 10darts-documentation
    (10darts-documentation) $ pip install -r requirements.txt

Translations
^^^^^^^^^^^^
First, activate the virtualenv:

.. code-block:: bash

    $ workon 10darts-documentation

Extract document’s translatable messages into pot files:

.. code-block:: bash

    (10darts-documentation) $ make gettext

Setup/update locale:

.. code-block:: bash

    (10darts-documentation) $ sphinx-intl update -p _build/locale -l es -l en

Build mo files and make translated document:

.. code-block:: bash

    (10darts-documentation) $ sphinx-intl build
    (10darts-documentation) $ make -e SPHINXOPTS="-D language='en'" html

Compile documentation
^^^^^^^^^^^^^^^^^^^^^

To create the HTML version of the documentation, run these commands:

.. code-block:: bash

    $ workon 10darts-documentation
    (10darts-documentation) $ make html


Upload to GitHub pages
^^^^^^^^^^^^^^^^^^^^^^

After commit and push, and also after compiling the documentation, then, run
the following commands:

.. code-block:: bash

    $ workon 10darts-documentation

    (10darts-documentation) $ ghp-import -n -m 'your commit message' -p _build/html
