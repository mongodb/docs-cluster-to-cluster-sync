- Writes that produce DDL events cannot occur on the source cluster during the 
  migration. The following events cannot occur: 
  
  - ``create``
  - ``drop``
  - ``dropDatabase``
  - ``createIndexes``
  - ``dropIndexes``
  - ``collModrefineCollectionShardKey``
  - ``rename``
  - ``reshardCollection``
  - ``shardCollection``

  This includes operations that may create new collections such as 
  :dbcommand:`mapReduce`, :pipeline:`$out`, and :pipeline:`$merge`. This also 
  includes collections created implicitly from inserts. Only writes that produce 
  CRUD events can occur during the migration.

  .. note:: 
   
     Writes that produce DDL events on source collections outside of the 
     :ref:`namespace filter <c2c-filtered-sync>` are allowed.

- ``geoHaystack`` indexes are not supported.

- :ref:`/reverse <c2c-api-reverse>` endpoints are not supported. You can't 
  enable the ``reversible`` option in the :ref:`/start <c2c-api-start>` request.

- You can't enable the ``enableUserWriteBlocking`` option in the ``/start`` 
  request. 

- You can't enable the ``createSupportingIndexes`` :ref:`sharding parameter 
  <c2c-api-start-sharding>` with a pre-6.0 cluster. 

- Indexes with inconsistent specs or that are missing on some shards are not 
  supported. To check for index inconsistencies, see 
  :ref:`manage-indexes-find-inconsistent-indexes`.

- For source clusters running MongoDB 4.4, :ref:`SRV connection strings 
  <connections-dns-seedlist>` are not supported. You must use a 
  :ref:`standard connection string 
  <connections-standard-connection-string-format>`.
