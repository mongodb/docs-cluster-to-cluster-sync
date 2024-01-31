..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :widths: 15 20 65

   * - Sync Type
     - Cluster
     - Required Permissions

   * - default
     - source cluster
     - - :authrole:`readAnyDatabase`
       - :authrole:`backup`
       - :authrole:`clusterMonitor`

   * - default
     - destination cluster
     - - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`
       - :authrole:`clusterMonitor`
       - :authrole:`clusterManager`

   * - write-blocking and reversing
     - source cluster
     -  - :authrole:`readWriteAnyDatabase`
        - :authrole:`backup`
        - :authrole:`restore`
        - :authrole:`clusterMonitor`
        - :authrole:`clusterManager`

        .. note::

           Additionally, to reverse sync, the original destination cluster
           requires the :authrole:`dbRole` role.

   * - write-blocking and reversing
     - destination cluster
     - - :authrole:`readWriteAnyDatabase`
       - :authrole:`backup`
       - :authrole:`restore`
       - :authrole:`clusterMonitor`
       - :authrole:`clusterManager`


For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

