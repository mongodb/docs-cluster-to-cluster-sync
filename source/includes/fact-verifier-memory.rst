
Verification requires 10 GB of memory plus an additional 500 MB
for every 1 million documents in the migration. 

- If the server ``mongosync`` runs on doesn't have sufficient
  memory available, the ``/start`` endpoint returns an error. 

- If another process claims this memory, the verifier can cause
  the server to stop the ``mongosync`` process due to an out of
  memory (OOM) error.

To use the verifier when this occurs, you must increase the
memory of the server and resume the migration. Note, the
verifier doesn't resume and instead restarts its checks from the
beginning.

If increasing server memory isn't an option, restart
``mongosync`` with the verifier disabled.


