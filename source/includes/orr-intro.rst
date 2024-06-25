Starting in {+c2c-beta-program-short+} 1.8, you can enable Oplog Rollover 
Resilience (ORR). With ORR,  ``mongosync`` applies changes made on the source 
cluster to the destination cluster during the initial sync. This adds resilience 
to long-running operations, mitigates the risk of oplog rollover, and 
significantly lowers the risk of restarting the sync.

