
The embedded verifier has the following limitations:

- ``mongosync`` stores the verifier state in memory, which can result
  in a significant memory overhead. To run verification checks, ``mongosync``
  must have an additional 1GB of memory for every 20 million documents.

- Verification is not resumable. If a user stops and then starts ``mongosync``
  for any reason (whether they do so by pausing and resuming the sync or by killing
  the ``mongosync`` process and restarting it), the verification process
  starts over from the beginning.

- The verifier is not compatible with :ref:`namespace filtering <c2c-filtered-sync>`
  or :ref:`reverse sync <c2c-api-reverse>`. The :ref:`/start <c2c-api-start>`
  endpoint returns an error if you enable these features and the the verifier.

- The verifier does not verify sync on indexes or collection metadata.

- The verifier does not perform verification checks on the following collections:

  - Capped collections
  - Collections with TTL indexes
  - Collections with non-default collation
  - Views

- The verifier is not compatible with most beta features:

  - Many-to-one and A→B→C migrations
  - Document filtering
  - Namespace remapping
  - Ignore preexisting namespaces
  - Source clusters that run MongoDB 4.4 and earlier
  - Destination clusters that run MongoDB 5.0 and earlier