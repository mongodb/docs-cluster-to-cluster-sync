The verifier doesn't check the following namespaces: 

- Sharded collections
- Capped collections
- Collections with TTL indexes
- Collections that don't use the default collation
- Views

The verifier doesn't check the following collection features:

- Collection metadata
- Sharding configurations
- Indexes

To verify the above data and metadata, script additional checks
for these collections and collection features. For more
information, see :ref:`c2c-verification`.

