
The embedded verifier has the following limitations:

- ``mongosync`` stores the verifier state in memory, which can
  result in a significant memory overhead. To run verification
  checks, ``mongosync`` requires 1 GB of memory for every 20
  million documents.

- Verification cannot be resumed. If a user stops and then starts
  ``mongosync`` for any reason, the verification process must start
  over from the beginning.

- The verifier isn't compatible with :ref:`reverse sync
  <c2c-api-reverse>`. The :ref:`/start <c2c-api-start>` endpoint
  returns an error if you enable these features and the
  verifier.

- The verifier doesn't perform any verification checks on
  indexes or collection metadata.

- The verifier doesn't perform checks on the following
  collections:

  - Capped collections
  - Collections with TTL indexes
  - Collections that don't use the default collation
  - Views

- The verifier isn't compatible with these beta features:

  - :ref:`c2c-beta-many-to-one`
  - :ref:`c2c-beta-abc-migration`
  - :ref:`c2c-beta-document-filtering`
  - :ref:`c2c-beta-namespace-remapping`
  - :ref:`c2c-beta-destination-data-handling`
  - Source clusters that run MongoDB 4.4 and earlier
  - Destination clusters that run MongoDB 5.0 and earlier
