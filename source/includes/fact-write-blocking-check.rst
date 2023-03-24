To see what state ``mongosync`` is in, call the :ref:`c2c-api-progress`
API endpoint. The ``/progress`` end point returns a boolean value,
``canWrite``. When ``canWrite`` is ``true``, it is safe to write to the
destination cluster. If you write to the destination cluster while
``canWrite`` is false, ``mongosync`` exits.
