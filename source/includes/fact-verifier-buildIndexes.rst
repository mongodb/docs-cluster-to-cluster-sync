
The verifier isn't compatible with TTL collections. If you start sync with
``buildIndexes`` set to ``never`` and the source cluster contains a TTL
collection, the ``/start`` endpoint returns an error.

To sync TTL collections without building indexes on the destination cluster,
you must start sync with the verifier disabled.
