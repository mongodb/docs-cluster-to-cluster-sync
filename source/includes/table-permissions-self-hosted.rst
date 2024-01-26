..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1
   :widths: 25 25 50

   * - Sync Type
     - Target
     - Required Permissions

   * - default
     - source cluster
     -

         - :authrole:`readAnyDatabase`
         - :authrole:`backup`
         - clusterMonitor

   * - default
     - destination cluster
     -

         - readWriteAnyDatabase
         - restore
         - clusterMonitor
         - clusterManager

   * - write-blocking
     - source cluster
     -  

         - readWriteAnyDatabase
         - backup
         - restore
         - clusterMonitor
         - clusterManager

   * - write-blocking
     - destination cluster
     -

         - readWriteAnyDatabase
         - backup
         - restore
         - clusterMonitor
         - clusterManager


   * - reversing
     - source cluster
     -  

         - readWriteAnyDatabase
         - backup
         - restore
         - clusterMonitor
         - clusterManager


   * -  reversing
     - destination cluster
     -

         - readWriteAnyDatabase
         - backup
         - restore
         - clusterMonitor
         - clusterManager


For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

