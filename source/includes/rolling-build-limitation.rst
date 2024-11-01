``mongosync`` does not support :ref:`rolling index builds
<index-building-replica-sets>` during migration. To avoid building
indexes in a rolling fashion during migration, use one of the following
methods to ensure that your destination indexes match your source
indexes:

- Build the index on the source before migration.
- Build the index on the source during migration with a non-rolling
  index build. 
- Build the index on the destination after migration. 