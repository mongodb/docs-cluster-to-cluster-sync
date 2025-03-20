.. important::

   If the source or destination cluster is a sharded cluster
   and you are not running ``mongosync`` with :ref:`namespace
   filtering <c2c-filtered-sync>`,
   you must disable the source cluster's balancer
   by running the :dbcommand:`balancerStop` command and waiting 15 minutes
   for the command to complete.

   If the source or destination cluster is a sharded cluster and you
   are running ``mongosync`` with namespace filtering, you can enable the source cluster's
   balancer overall but you must disable it for 
   all collections within the namespace filter. 
   See :ref:`disabling-balancer-filtered`. You can also disable
   the source cluster's balancer.

   You must always disable the balancer on a sharded destination
   cluster by using :dbcommand:`balancerStop`.

   During migration, do not run the :dbcommand:`moveChunk` or 
   :dbcommand:`moveRange` commands. If you have enabled the source cluster's
   balancer, but disabled it for collections within the namespace
   filter, do not run :dbcommand:`shardCollection` on collections
   within the namespace filter. If you run :dbcommand:`shardCollection` on 
   collections within the namespace filter during the migration, ``mongosync``
   returns an error and stops, which requires you to start the migration
   from scratch.