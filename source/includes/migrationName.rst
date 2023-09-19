.. reference/configuration.txt
.. reference/mongosync.txt

.. versionadded:: 1.7.0

.. include:: /includes/migrationName-description.rst

The ``migrationName`` string can contain a maximum of 44 alphanumeric or
underscore characters. ``migrationName`` is appended to the string
``"mongosync_internal_"``.

For example, if you set ``migrationName`` to ``"Cluster 27000 to
cluster 35000"``, the string added to the database is
``"mongosync_internal_Cluster 27000 to cluster 35000"``.

For a full example, see :ref:`c2c-quickstart-many-with-one`.
