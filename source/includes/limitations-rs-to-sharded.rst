- ``mongosync`` allows users to rename collections that the
  ``sharding.shardingEntries`` option for the :ref:`c2c-api-start`
  command includes during sync. To see limitations on renaming
  collections while ``mongosync`` is running, see :ref:`Renaming
  During Sync <rename-during-sync>`.
- When using the ``sharding.createSupportingIndexes`` option to create
  indexes supporting shard keys on the destination cluster during
  sync, you cannot create these indexes afterwards on the source
  cluster.

  The index must either exist before ``mongosync`` starts or be
  created after the migration is complete and ``mongosync`` has
  stopped.