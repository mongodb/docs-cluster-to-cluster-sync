.. reference/configuration.txt
.. reference/mongosync.txt

.. versionadded:: 1.7.0

Sets a migration name for a sync operation. For example, you can set a
migration name to identify the sync operations from multiple source
clusters into one destination cluster.

The ``migrationName`` string can contain up to 44 alphanumeric
and underscore characters. ``migrationName`` is appended to the string
``"mongosync_internal_"``.

If you set ``migrationName`` to
``"cluster_27000_to_cluster_35000_sync"``, the resulting final string is
``"mongosync_internal_cluster_27000_to_cluster_35000_sync"``.

For a complete example, see :ref:`c2c-quickstart-many-with-one`.
