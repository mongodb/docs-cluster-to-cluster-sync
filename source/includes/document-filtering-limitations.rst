- ``field`` names can't contain dots (``.``) or dollar signs (``$``).

- ``matchValues`` array items can be the following BSON types: 

  - All number types
  - Binary
  - Booleans
  - Datetime
  - ObjectID
  - Strings 

- If the document filter contains a string and at least one migrated collection 
  with non-default collation, ``mongosync`` fails immediately.

- The destination cluster must not contain pre-existing data that matches the 
  filter.

- You can't specify a document filter and set the ``reversible`` flag to 
  ``true``.
