By default, ``mongosync`` enables destination-only 
write-blocking on the destination cluster. 
``mongosync`` unblocks writes right before ``canWrite`` is set to ``true``.

You can enable dual write-blocking, which blocks
writes on both the source and destination clusters. 
If you enable dual write-blocking, ``mongosync`` blocks writes:

- On the destination cluster during the migration. ``mongosync``
  unblocks writes right before it sets ``canWrite`` to ``true``
- On the source cluster after you call ``/commit``

To enable dual write-blocking, use the :ref:`start API <c2c-api-start>`
to set ``enableUserWriteBlocking`` to ``true``.

You can use
the :ref:`start API <c2c-api-start>`
to set ``enableUserWriteBlocking`` to ``false``.

You cannot enable dual write-blocking or disable
write-blocking after the sync starts.