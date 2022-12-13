- Filtering is not supported with :ref:`reversible sync
  <c2c-api-reverse>`.
- The destination cluster must not contain user data prior to starting.
- The destination cluster must not contain the
  ``mongosync_reserved_for_internal_use`` system database prior to
  starting.
- You cannot modify a filter that is in use. To create a new filter, see
  :ref:`changing the filter <c2c-change-filter>`.
- If you rename a collection or database that is part of a filter,
  ``mongosync`` does not continue syncing under the new name.
- If you rename a collection or database so that the new name matches
  part of an existing filter, ``mongosync`` cannot sync the renamed
  entity.
- If a filter includes a :ref:`view <views-landing-page>` but not the
  base collection, only the view is replicated.
- You cannot specify system collections or system databases.
- Operations that use the :pipeline:`$out` aggregation stage are only 
  supported if the entire database is specified in the filter. You
  cannot limit the filter to a collection within the database. See:
  :ref:`c2c-filter-with-out`.
