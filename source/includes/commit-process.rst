.. step:: Verify the status of mongosync.

   Call the :ref:`progress <c2c-api-progress>` endpoint to determine
   the status of ``mongosync`` before starting the cutover process.
   Ensure that the ``mongosync`` process status indicates the
   following values:

   - ``canCommit`` is ``true``.

   - ``lagTimeSeconds`` is small (near ``0``).

      If ``lagTimeSeconds`` isn't close to ``0`` when the cutover
      starts, cutover might take a long time.

   The following example returns the status of the synchronization process.

   Request
   ~~~~~~~

   .. literalinclude:: /includes/api/requests/progress.sh
      :language: shell

   Response
   ~~~~~~~~

   .. literalinclude:: /includes/api/responses/progress.json
      :language: json
      :copyable: false
      :emphasize-lines: 5, 8

.. step:: Stop any write operations to the synced collections on the source.

   - If you start ``mongosync`` with ``enableUserWriteBlocking``
      set to ``true``, ``mongosync`` blocks all write operations on
      the entire source cluster during the commit (step 4) for you.
   - If you didn't start ``mongosync`` with
      ``enableUserWriteBlocking``, ensure that you disable writes.
      For example, run the :dbcommand:`setUserWriteBlockMode` command on the
      source cluster:

      .. code-block:: javascript

         db.adminCommand( {
            setUserWriteBlockMode: 1,
            global: true 
         } )

   - If ``mongosync`` uses filtered sync, it's not necessary to
      disable writes to the entire source cluster. However, you must ensure
      that you stop write operations for the collections that the
      filter includes.

.. step:: Send a :ref:`commit <c2c-api-commit>` request to ``mongosync``.

   If you start multiple ``mongosync`` instances for your
   migration, you must issue a commit request for each ``mongosync``
   instance.

   Request
   ~~~~~~~~

   .. literalinclude:: /includes/api/requests/commit.sh
      :language: shell

   Response
   ~~~~~~~~

   .. literalinclude:: /includes/api/responses/success.json
      :language: json
      :copyable: false

   .. note::

      After you submit a ``commit`` request, call the ``progress`` endpoint
      to ensure that the ``mongosync`` state is ``COMMITTING`` or
      ``COMMITTED``.

   Once you complete this step, ``mongosync`` blocks writes on the source cluster.

.. step:: Wait until you can perform writes on the destination cluster.

   Call the ``progress`` endpoint to determine if ``canWrite`` is
   ``true``. If ``canWrite`` is ``false``, wait until ``progress``
   shows ``canWrite`` is ``true``.

   .. io-code-block::
      :copyable: true

      .. input::
         :language: bash

         curl -sS localhost:27182/api/v1/progress -XGET | jq ".progress.canWrite"

      .. output::
         :language: json

         true

.. step:: Verify data transfer.

   Verify the successful sync of data from the source to the
   destination cluster.

   For more information, see :ref:`c2c-verification`.

.. step:: Enable application writes on the destination cluster.

   To enable writes, update :dbcommand:`setUserWriteBlockMode`:

   .. code-block:: javascript

      db.adminCommand(
         {
            setUserWriteBlockMode: 1,
            global: false
         }
      )

   Then, transfer your application workload to the destination cluster.

.. step:: Call the ``progress`` endpoint to determine the status of the ``mongosync`` process.

   When the ``mongosync`` progress response indicates that the
   ``mongosync`` state is ``COMMITTED``, the cutover process is
   complete.

   .. io-code-block::
      :copyable: true

      .. input::
         :language: bash

         curl -sS localhost:27182/api/v1/progress -XGET | jq ".progress.state"

      .. output::
         :language: json

         "COMMITTED"