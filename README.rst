Elasticsearch
=============

Formula to install and configure Elasticsearch.


.. note::

    See the full `Salt Formulas installation and usage instructions
    <http://docs.saltstack.com/en/latest/topics/development/conventions/formulas.html>`_.

Available states
================

.. contents::
    :local:


``elasticsearch``
-----------

Installs, configures and runs the Elasticsearch service.

``elasticsearch.config``
------------------------

Configures Elasticsearch.
Custom options can be specified via `custom_options` and are rendered as yaml in the elasticsearch config.

``elasticsearch.pkg``
---------------------

Installs Elasticsearch.

``elasticsearch.repo``
----------------------

Adds the Elasticsearch pkg repo.


``elasticsearch.service``
-------------------------

Manages the Elasticsearch service.

``elasticsearch.sysconfig``
---------------------------

Configures defaults/sysconfig env vars for the Elasticsearch service.

``elasticsearch.plugins``
-------------------------

Allows configuration of elasticsearch plugins.
