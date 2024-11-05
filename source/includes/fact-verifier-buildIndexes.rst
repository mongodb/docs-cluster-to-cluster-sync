
If you start sync with verification enabled and ``buildIndexes``
set to ``never``, the ``/start`` endpoint returns an error if
``mongosync`` finds a TTL collection on the source cluster.

To sync TTL collections without building indexes on the
destination cluster, you must start sync with the verifier
disabled.
