.. important::

   When the source or destination cluster is a sharded cluster, you must stop 
   the source cluster's balancer on collections within the :ref:`namespace
   filter <c2c-filtered-sync>`. You can enable the source cluster's balancer on
   the cluster level and for collections outside the namespace filter. 
   You must also stop the destination cluster's balancer.

   During migration, do not run the :dbcommand:`moveChunk` or 
   :dbcommand:`moveRange` commands. If you have enabled the source cluster's
   balancer, but disabled it for collections within the namespace
   filter, do not run :dbcommand:`shardCollection` on collections
   within the namespace filter. If you run :dbcommand:`shardCollection` on 
   collections within the namespace filter during the migration, ``mongosync``
   returns an error and stops.