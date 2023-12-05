
``mongosync`` applies operations in the ``oplog`` on the source cluster
to the data on the destination cluster.  When operations 
that ``mongosync`` has not applied roll off the ``oplog`` 
on the source cluster, the sync fails and ``mongosync`` exits.

Starting in version 1.5.0, {+c2c-product-name+} enables Oplog Rollover
Resilience (ORR) which allows ``mongosync`` to apply changes to the on
the source cluster to the destination cluster during the initial sync
process. ORR increases the resilience of ``mongosync`` to oplog rollover
but does not prevent it entirely. For more informatino on ORR, see
:ref:`Oplog Rollover Resilience <.. _1.5.0-c2c-release-notes:>`

Use the :setting:`~replication.oplogSizeMB` setting
to increase the size of the ``oplog`` on the source cluster.

