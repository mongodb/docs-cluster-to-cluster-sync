
.. warning::
   Syncing large document to a sharded destination cluster can cause 
   the destination cluster to initiate chunk migration, which may trigger 
   a bug that can result in data loss on that chunk.

   To avoid this, it is recommended that you run the :dbcommand:`balancerStop`
   command on the destination cluster before starting a sync.  Once ``mongosync``
   completes the sync, you can restart the balancer with the 
   :dbcommand:`balancerStart` command.

