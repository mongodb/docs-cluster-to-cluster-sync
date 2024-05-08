- ``field`` names can't contain dots (``.``) or dollar signs (``$``).

- ``matchValues`` array items can't be any of the following BSON types: 

  - Arrays 
  - Embedded documents 
  - Regular expressions

- Documents must not move in or out of the filter during migration. 

- Ensure that there isn't pre-existing data on the destination cluster that 
  matches the filter.

- If you specify a document filter and set the ``reversible`` flag to ``true``, 
  ``mongosync`` fails immediately.

- If the document filter contains a string constant and at least one 
  migrated collection that is specially collated, ``mongosync`` fails 
  immediately.

- ``mongosync`` fails during initialization if a document filter is specified 
  for: 

  - Time-series collections. 
  - Queryable-encryption collections.
  - Field-level encryption collections. 
