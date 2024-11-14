The destination cluster must have enough disk storage to accommodate the logical 
data size being migrated and the destination oplog entries from the initial 
sync. For example, to migrate 10 GB of data, the destination cluster must have
at least 10 GB available for the data and another 10 GB for the insert oplog 
entries.

.. include:: /includes/fact-oplog-reduction.rst
