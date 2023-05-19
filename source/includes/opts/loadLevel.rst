.. reference/configuration.txt
.. reference/mongosync.txt

*Default*: ``3``

An integer value between ``1`` and ``4`` inclusive that sets the cluster
workload level for data synchronization between the source and
destination clusters.

``4`` causes the maximum workload on the clusters and the fastest data
synchronization. ``1`` causes minimum workload and slowest
data synchronization.
