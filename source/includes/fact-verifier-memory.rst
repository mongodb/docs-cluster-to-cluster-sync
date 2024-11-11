
Verification requires 10 GB of memory plus an additional 500 MB
for every 1 million documents in the migration. 

If the server ``mongosync`` runs on doesn't have sufficient
memory available, the ``/start`` endpoint returns an error. 

To use the verifier when this occurs, you must increase the
memory of the server and resume the migration. This can
significantly increase the total migration time, as the verifier
must restart its checks from the beginning.

If increasing server memory isn't an option, restart
``mongosync`` with the verifier disabled.


