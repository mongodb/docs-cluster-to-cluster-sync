The :term:`oplog` is a special capped collection that keeps a rolling 
record of all operations that modify the data stored in your databases. 
If older operations are removed from the source oplog before mongosync 
has a chance to apply those operations to the destination, mongosync 
will exit and the migration will fail.

During initial sync, mongosync may apply operations at a slower rate.
Once initial sync is complete, mongosync may be able to apply operations
faster to catch up with the source.

If you anticipate that mongosync's replication lag will become larger 
than the oplog window (the time difference between the newest and the 
oldest timestamps in the oplog), or if you plan to pause synchronization 
for an extended period of time, increase the size of the replica set 
``oplog`` in the source cluster.
