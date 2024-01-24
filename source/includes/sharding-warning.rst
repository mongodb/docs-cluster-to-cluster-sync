
.. important::

   If the destination is a sharded cluster with the balancer enabled, write 
   performance of the destination cluster may be degraded during ``mongosync``'s 
   Collection Copy phase. To warn of this potential performance impact,   
   ``mongosync`` runs the :dbcommand:`getBalancerState()` command during 
   initialization. If it returns ``true``, it logs a warning. 
   
   Consider disabling the balancer on the destination cluster if write performance 
   during migration is impacted. You stop the balancer with the 
   :dbcommand:`balancerStop` command, and restart it with the 
   :dbcommand:`balancerStart` command.