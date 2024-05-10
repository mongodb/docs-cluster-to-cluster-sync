- ``field`` names can't contain dots (``.``) or dollar signs (``$``).

- ``matchValues`` array items can be the following BSON types: 

  - All number types
  - Binary
  - Booleans
  - Datetime
  - ObjectID
  - Strings 

- Documents must not move in or out of the filter during migration.

- If the document filter contains a string and at least one migrated collection 
  with non-default collation, ``mongosync`` fails immediately.

- The destination cluster must not contain pre-existing data that matches the 
  filter.

- You can't specify a document filter and set the ``reversible`` flag to 
  ``true``.

- You can't use document filtering for:

  - :ref:`Time-series collections <manual-timeseries-landing>`. 
  - :ref:`Queryable-encryption collections <qe-manual-feature-qe>`.
  - :ref:`Field-level encryption collections <manual-csfle-feature>`. 
