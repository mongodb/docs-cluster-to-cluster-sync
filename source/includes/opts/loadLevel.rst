.. reference/configuration.txt
.. reference/mongosync.txt

*Default*: ``3``

Sets the cluster workload level used for synchronizing data between the
source and destination clusters:

- ``4`` (highest setting) maximizes cluster workload and synchronizes
  data the fastest.
- ``1`` (lowest setting) minimizes cluster workload and synchronizes
  data the slowest.
