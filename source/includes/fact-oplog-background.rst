
.. note::

   Removing older operations from the oplog of the source cluster,   
   before ``mongosync`` applies them to the destination cluster,
   will cause ``mongosync`` to exit and the migration to fail.

During initial sync, ``mongosync`` may apply operations at a slower
rate. Once ``mongosync`` completes its initial sync, it applies changes to
faster to catch up with the source cluster.

If you expect the ``mongosync`` replication lag to become larger
than the :term:`oplog window` or if you plan to pause sync for an
extended period of time, use the :setting:`~replication.oplogSizeMB`
to increase the size of the oplog on the source cluster.

