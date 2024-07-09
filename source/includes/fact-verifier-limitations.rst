
The verifier has the following limitations:

- ``mongosync`` stores the verifier state in memory, which can result
  in a significant memory overhead.

  To run verification checks, ``mongosync`` must have an additional 1GB for every
  20 million documents included in the sync.

- Verification is not resumable. If a user stops and then starts ``mongosync``
  for any reason (whether they do so by pausing and resuming the sync or by killing
  the ``mongosync`` process and restarting it), the verification process
  starts over from the beginning.

- The verifier is not compatible with :ref:`namespace filtering <c2c-filtered-sync>`
  or :ref:`reverse sync <c2c-api-reverse>`. The :ref:`/start <c2c-api-start>`
  endpoint returns an error if these features and
  the verifier are both enables.

- The verifier does not verify sync on indexes or collection metadata.

- The verifier does not perform verification checks on the following collections:

  - Capped collections
  - Collections with TTL indexes
  - Collections with non-default collation
  - Views
