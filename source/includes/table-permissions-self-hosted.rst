..
   Comment: The nested lists need extra indents.  Keep roles in alphabetic
            order.

.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :widths: 20 40 40

   * - Sync Type
     - Source Permissions
     - Destination Permissions

   * - default
     - - :authrole:`backup`
       - :authrole:`clusterMonitor`
       - :authrole:`readAnyDatabase`

     - - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

   * - write-blocking and reversing
     - - :authrole:`backup`
        - :authrole:`clusterManager`
        - :authrole:`clusterMonitor`
        - :authrole:`readWriteAnyDatabase`
        - :authrole:`restore`

        .. note::

           Additionally, to reverse sync, the original destination cluster
           requires the :authrole:`dbRole` role.

     - - :authrole:`backup`
       - :authrole:`clusterManager`
       - :authrole:`clusterMonitor`
       - :authrole:`readWriteAnyDatabase`
       - :authrole:`restore`

For details on server roles, see: :ref:`authorization`.

To update user permissions, see: :dbcommand:`grantRolesToUser`.

