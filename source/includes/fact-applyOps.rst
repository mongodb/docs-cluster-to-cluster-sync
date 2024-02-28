``mongosync`` may not replicate :dbcommand:`applyOps` operations on the
source cluster to the destination cluster while the sync is in
the ``RUNNING`` state. 