.. reference/configuration.txt
.. reference/mongosync.txt

.. versionadded:: 1.7.0

Sets a migration name for a sync operation. For example, you can set a
migration name to identify the sync operations from multiple source
clusters into one destination cluster.

The ``migrationName`` string can contain up to 44 alphanumeric and
underscore characters. ``migrationName`` is appended to the string
``"mongosync_internal_"``.

For example, if you set ``migrationName`` to ``"Cluster 27000 to cluster
35000 sync"``, the final string is ``"mongosync_internal_Cluster 27000
to cluster 35000 sync"``.

For a complete example, see :ref:`c2c-quickstart-many-with-one`.
