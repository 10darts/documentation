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

.. code-block:: bash

    $ mkvirtualenv 10darts-documentation
    (10darts-documentation) $ pip install -r requirements.txt

Compile documentation
^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

    $ workon 10darts-documentation
    (10darts-documentation) $ make html


Upload to GitHub pages
^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: bash

    $ workon 10darts-documentation
    (10darts-documentation) $ ghp-import -n -m 'your commit message' -p _build/html
