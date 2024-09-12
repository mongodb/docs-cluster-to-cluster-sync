
The verifier isn't compatible with these beta features:

- :ref:`c2c-beta-many-to-one`
- :ref:`c2c-beta-abc-migration`
- :ref:`c2c-beta-document-filtering`
- :ref:`c2c-beta-namespace-remapping`
- :ref:`c2c-beta-destination-data-handling`
- Source clusters that run MongoDB 4.4 and earlier
- Destination clusters that run MongoDB 5.0 and earlier

The ``/start`` endpoint returns an error if you enable any of these features
with the verifier.
