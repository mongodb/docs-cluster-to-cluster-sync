.. reference/configuration.txt
.. reference/mongosync.txt

.. versionadded:: 1.8.0

Sets a migration name for a sync operation. For example, you can set a
migration name to identify each sync operation from multiple source
clusters into one destination cluster.

The ``migrationName`` string can contain up to 44 alphanumeric
and underscore characters. ``migrationName`` is appended to the string
``"mongosync_internal_"`` to set the migration metadata database name.

If you set ``migrationName`` to
``"cluster_27000_to_cluster_35000_sync"``, the resulting ``mongosync``
metadata database name is
``"mongosync_internal_cluster_27000_to_cluster_35000_sync"``.

For a complete example, see :ref:`c2c-quickstart-many-with-one`.
