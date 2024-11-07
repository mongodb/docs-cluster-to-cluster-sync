
Verification requires 10 GB of memory plus an additional 500 MB
for every 1 million documents in the migration. 

- If the server ``mongosync`` runs on doesn't have sufficient
  memory available, the ``/start`` endpoint returns an error. 

- If another process claims this memory, the verifier can cause
  the server to stop the ``mongosync`` process due to an out of
  memory (OOM) error.

When this occurs, you must either increase the memory of the
server and resume the migration or restart ``mongosync`` with
the verifier disabled.

