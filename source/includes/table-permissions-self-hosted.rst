..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1
   :widths: 15 15 70

   * - Sync Type
     - Cluster
     - Required Permissions

   * - default
     - source
     - .. hlist::
          :columns: 2

          - :authrole:`readAnyDatabase`
          - :authrole:`backup`
          - :authrole:`clusterMonitor`

   * - default
     - destination
     -

         - :authrole:`readWriteAnyDatabase`
         - :authrole:`restore`
         - :authrole:`clusterMonitor`
         - :authrole:`clusterManager`

   * - write-blocking
     - source
     -  

         - :authrole:`readWriteAnyDatabase`
         - :authrole:`backup`
         - :authrole:`restore`
         - :authrole:`clusterMonitor`
         - :authrole:`clusterManager`

   * - write-blocking
     - destination
     -

         - :authrole:`readWriteAnyDatabase`
         - :authrole:`backup`
         - :authrole:`restore`
         - :authrole:`clusterMonitor`
         - :authrole:`clusterManager`


   * - reversing
     - source
     -  

         - :authrole:`readWriteAnyDatabase`
         - :authrole:`backup`
         - :authrole:`restore`
         - :authrole:`clusterMonitor`
         - :authrole:`clusterManager`
         - :authrole:`dbAdmin`


   * -  reversing
     - destination
     -

         - :authrole:`readWriteAnyDatabase`
         - :authrole:`backup`
         - :authrole:`restore`
         - :authrole:`clusterMonitor`
         - :authrole:`clusterManager`


For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

