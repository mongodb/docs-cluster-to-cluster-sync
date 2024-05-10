- ``field`` names can't contain dots (``.``) or dollar signs (``$``).

- ``matchValues`` array items can't be any of the following BSON types: 

  - Arrays 
  - Embedded documents 
  - Regular expressions

- Documents must not move in or out of the filter during migration. If a source 
  document from a prior sync no longer matches the query filter, 
  ``mongosync`` deletes the document from the destination cluster.

- If the document filter contains a string constant and at least one 
  migrated collection that is specially collated, ``mongosync`` fails 
  immediately.

- The destination cluster must not contain pre-existing data that matches the 
  filter.

- You can't specify a document filter and set the ``reversible`` flag to 
  ``true``.

- You can't use document filtering for:

  - :ref:`Time-series collections <manual-timeseries-landing>`. 
  - :ref:`Queryable-encryption collections <qe-manual-feature-qe>`.
  - :ref:`Field-level encryption collections <manual-csfle-feature>`. 
