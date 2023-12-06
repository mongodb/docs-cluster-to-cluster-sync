
``mongosync`` applies operations in the ``oplog`` on the source cluster
to the data on the destination cluster.  When operations 
that ``mongosync`` has not applied roll off the ``oplog`` 
on the source cluster, the sync fails and ``mongosync`` exits.

Starting in version 1.5.0, {+c2c-product-name+} enables Oplog Rollover
Resilience (ORR) which allows ``mongosync`` to apply changes on the
source cluster to the destination cluster during the initial sync. ORR
increases the resilience of ``mongosync`` to oplog rollover but does not
prevent rollover entirely. For more information on ORR, see the :ref:`Oplog
Rollover Resilience release note <1.5.0-c2c-release-notes>`.

If you anticipate that you will sync from a source cluster with a high
write rate for an extended period or that you will pause sync for an
extended period, you might exceed the oplog window, even with ORR. To
increase the size of the ``oplog`` on the source cluster, use the
:setting:`~replication.oplogSizeMB` setting. For more information on
increasing the size of the oplog, see :ref:`Change Oplog Size
<tutorial-change-oplog-size>`.


