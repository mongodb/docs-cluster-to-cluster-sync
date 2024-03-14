Starting in 1.3.0, {+c2c-product-name+} supports :ref:`capped
collections <manual-capped-collection>` with some limitations.

- ``mongosync`` does not support :dbcommand:`convertToCapped`. If you run
  ``convertToCapped``, ``mongosync`` exits with an error.
- ``mongosync`` does not support :dbcommand:`cloneCollectionAsCapped`.
- ``mongosync`` does not support dropping a collection and then
  recreating the collection as a capped collection under the same name. 

Capped collections on the source cluster work normally during sync.

Capped collections on the destination cluster have temporary changes
during sync:

- There is no maximum number of documents.
- The maximum collection size is 1PB.

``mongosync`` restores the original values for maximum number of
documents and maximum document size during commit.
