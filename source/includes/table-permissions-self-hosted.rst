..
   Comment: The nested lists need extra indents.  Keep roles in alphabetic
            order.

.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :widths: 15 20 65

   * - Sync Type
     - Cluster
     - Required Permissions

   * - default
     - source cluster
     - - :authrole:`backup`
       - :authrole:`clusterMonitor`
       - :authrole:`readAnyDatabase`

   * - default
     - destination cluster
     - - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

   * - write-blocking and reversing
     - source cluster
     - - :authrole:`backup`
        - :authrole:`clusterManager`
        - :authrole:`clusterMonitor`
        - :authrole:`readWriteAnyDatabase`
        - :authrole:`restore`

        .. note::

           Additionally, to reverse sync, the original destination cluster
           requires the :authrole:`dbRole` role.

   * - write-blocking and reversing
     - destination cluster
     - - :authrole:`backup`
       - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

