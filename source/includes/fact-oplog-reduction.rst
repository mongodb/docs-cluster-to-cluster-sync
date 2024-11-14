To reduce the overhead of the destination oplog entries, you can: 

- Use the :setting:`~replication.oplogSizeMB` setting to lower the destination 
  cluster's oplog size

- Use to :setting:`~storage.oplogMinRetentionHours` setting to lower or remove 
  the destination cluster's minimum oplog retention period.