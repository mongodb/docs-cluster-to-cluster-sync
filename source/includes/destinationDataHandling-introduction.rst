Starting in ``mongosync-beta`` 1.8, use the ``destinationDataHandling``
option to define what happens if the destination cluster isn't empty.
Earlier ``mongosync`` versions return an error if the destination
cluster isn't empty.
