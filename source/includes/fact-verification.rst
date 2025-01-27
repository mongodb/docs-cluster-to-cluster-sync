
Before transferring your application load from the source cluster to the
destination, check your data to ensure that the sync was successful.

.. note::

   If ``mongosync`` stops while in the
   ``WaitingForCommitComplete`` phase, such as due to memory
   limitations, you must disable the verifier when you restart it.

   To disable the verifier, see the
   :option:`--disableVerification` option.

For more information, see :ref:`c2c-verification`.

