You can safely write to the source cluster while ``mongosync`` is
syncing. Do not write to the destination cluster until the last stages
of the :ref:`COMMITTING <c2c-state-committing>` state.