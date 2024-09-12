.. list-table::
   :header-rows: 1
   :stub-columns: 1
   :class: compatibility

   * - 
     - Many-to-One
     - A->B->C Migration
     - Document Filtering
     - Namespace Remapping 
     - Oplog Rollover Resilience
     - Destination Data Handling 
     - Pre-6.0 Version Support

   * - Many-to-One
     -
     - 
     - 
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - |checkmark|

   * - A->B->C Migration
     - 
     - 
     - 
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - |checkmark| [#pre-6.0-abc]_

   * - Document Filtering 
     - 
     - 
     - 
     - |checkmark|
     - |checkmark|
     - |checkmark|
     -

   * - Namespace Remapping 
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - 
     - |checkmark|
     - |checkmark|
     -

   * - Oplog Rollover Resilience
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - 
     - |checkmark|
     - |checkmark|

   * - Destination Data Handling 
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - |checkmark|
     - 
     - |checkmark|

   * - Pre-6.0 Version Support
     - |checkmark|
     - |checkmark| [#pre-6.0-abc]_
     - 
     -
     - |checkmark|
     - |checkmark|
     -

.. [#pre-6.0-abc]

   A->B->C migrations are compatible with pre-6.0 version support only if 
   cluster A uses a server version older than 6.0 . If cluster A and B are both 
   pre-6.0 clusters, then the second migration (B->C) can start only after all
   ``mongosync``-generated :ref:`DDLs <txn-prod-considerations-ddl>` complete.
