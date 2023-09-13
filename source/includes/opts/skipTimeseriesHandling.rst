.. versionadded:: 1.6.0

Can be set to these strings:

- ``abort``, which means ``mongosync`` ends if a time series collection
  is found.
- ``skip``, which means ``mongosync`` ignores time series collections.

In mongosync 1.6 and 1.7, and MongoDB 5.0, ``timeSeriesHandling``
determines the outcome.

In mongosync 1.6, and MongoDB 6.0 and later, time series collections are
always ignored.

In mongosync 1.7, and MongoDB 6.0 and later, time series collections are
always transferred.
