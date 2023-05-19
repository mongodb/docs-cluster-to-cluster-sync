.. reference/configuration.txt
.. reference/mongosync.txt

*Default*: ``3``

An integer value between ``1`` and ``4`` inclusive that sets the cluster
workload level for data synchronization between the source and
destination clusters.

``4`` causes maximum cluster workload and the fastest data
synchronization. ``1`` causes minimum cluster workload and the slowest
data synchronization.
