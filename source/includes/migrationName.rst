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

For a many-to-one cluster migration, you could set the migration names
on the command line as shown in this example scenario:

.. code-block:: shell

   ./bin/mongosync \
         --cluster0 "mongodb://localhost:27000" \
         --cluster1 "mongodb://localhost:35000" --migrationName "Cluster 27000 to cluster 35000"

   ./bin/mongosync \
         --cluster0 "mongodb://localhost:27001" \
         --cluster1 "mongodb://localhost:35000" --migrationName "Cluster 27001 to cluster 35000"
