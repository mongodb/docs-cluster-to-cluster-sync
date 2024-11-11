
Compatibility
~~~~~~~~~~~~~

The embedded verifier is not available in mongosync 1.8 and
earlier.

For alternative verification methods, see :ref:`c2c-verification`.

Limitations
~~~~~~~~~~~

The embedded verifier has the following limitations:

- Verification of sharded clusters is unsupported.

- ``mongosync`` stores the verifier state in memory, which can
  result in a significant memory overhead. To run verification
  checks, ``mongosync`` requires approximately 0.5 GB of memory
  for every 1 million documents.

- Verification cannot be resumed. If a user stops or pauses sync
  and then starts ``mongosync`` again for any reason, the
  verification process restarts from the beginning. This can
  cause verification to fall substantially behind the migration.

- The verifier isn't compatible with :ref:`reverse sync
  <c2c-api-reverse>`. If you call the :ref:`/start
  <c2c-api-start>` endpoint with reverse enabled, the verifier
  runs its checks on the destination cluster. If you then call
  :ref:`/reverse <c2c-api-reverse>`, it disables the verifier.

- .. include:: /includes/fact-verifier-buildIndexes

Unsupported Verification Checks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: /includes/fact-verifier-unsupported

Unsupported Beta Features
~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: /includes/fact-verifier-beta-limitations
