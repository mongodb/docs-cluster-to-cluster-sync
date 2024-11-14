.. important::

   When the source or destination cluster is a sharded cluster, stop the
   balancer on both clusters and don't run the :dbcommand:`moveChunk` or
   :dbcommand:`moveRange` commands for the entire lifetime of the
   migration. To stop the balancer, run the :dbcommand:`balancerStop`
   command and wait for the command to complete.
