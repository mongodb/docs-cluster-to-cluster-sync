
Verification requires 10 GB of memory plus an additional 500 MB
for every 1 million documents in sync. If the server
``mongosync`` runs on doesn't have sufficient memory available,
the ``/start`` endpoint returns an error.

When this occurs, you must either increase the memory of the
server or restart sync with the verifier disabled.

