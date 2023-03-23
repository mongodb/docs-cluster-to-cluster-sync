You can safely write to the source cluster while ``mongosync`` is
syncing. You should not write to the destination cluster until the
end of the :ref:`COMMITTING <c2c-state-committing>` phase.