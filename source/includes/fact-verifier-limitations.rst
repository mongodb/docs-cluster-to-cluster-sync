
Compatibility
~~~~~~~~~~~~~

The embedded verifier is not available in mongosync 1.8 and
earlier.

For alternative verification methods, see :ref:`c2c-verification`.

Limitations
~~~~~~~~~~~

The embedded verifier has the following limitations:

- ``mongosync`` stores the verifier state in memory, which can
  result in a significant memory overhead. To run verification
  checks, ``mongosync`` requires approximately 1 GB of memory
  for every 15 million documents.

- Verification cannot be resumed. If a user stops and then starts
  ``mongosync`` for any reason, the verification process
  restarts from the beginning. This can cause verification to
  fall substantially behind the migration.

- The verifier isn't compatible with :ref:`reverse sync
  <c2c-api-reverse>`. The :ref:`/start <c2c-api-start>` endpoint
  returns an error if you enable this feature and the
  verifier.

TTL Collections
~~~~~~~~~~~~~~~

.. include:: /includes/fact-verifier-buildIndexes

Unsupported Verification Checks
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: /includes/fact-verifier-unsupported

Unsupported Beta Features
~~~~~~~~~~~~~~~~~~~~~~~~~

.. include:: /includes/fact-verifier-beta-limitations
