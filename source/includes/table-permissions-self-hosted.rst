..
   Comment: The nested lists need extra indents.  Keep roles in alphabetic
            order.

.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :widths: 20 40 40

   * - Sync Type
     - Required Source Permissions
     - Required Destination Permissions

   * - default
     - - :authrole:`backup`
       - :authrole:`clusterMonitor`
       - :authrole:`readAnyDatabase`

     - - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

   * - write-blocking
     - - :authrole:`backup`
        - :authrole:`clusterManager`
        - :authrole:`clusterMonitor`
        - :authrole:`readWriteAnyDatabase`
        - :authrole:`restore`

     - - :authrole:`backup`
       - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

   * - reversing
     - - :authrole:`backup`
        - :authrole:`clusterManager`
        - :authrole:`clusterMonitor`
        - :authrole:`readWriteAnyDatabase`
        - :authrole:`restore`
        - :authrole:`dbRole`

     - - :authrole:`backup`
       - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

