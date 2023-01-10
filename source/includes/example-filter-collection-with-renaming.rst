.. include:: /includes/intro-start-api-example-intro.rst

``cluster0`` contains the ``students``, ``staff``, and
``classes`` databases.

The ``students`` database contains the ``undergrad`` and ``graduate``
collections. The ``staff`` database contains the ``employees`` and
``contractors`` collections.

The ``includeNamespaces`` array in this example defines a filter on both
databases:

{ "source": "cluster0",
  "destination": "cluster1", "includeNamespaces" :
     [
         { "database" : "students" },
         { "database" : "staff", "collections": ["employees"] }
     ]
}

With this filter in place ``mongosync`` syncs:

- The entire ``students`` database
- The ``employees`` collection in the ``staff`` database

``mongosync`` does not sync any information from the ``classes``
database.

If you add new collections to the ``students`` database, ``mongosync``
syncs them too. However, ``mongosync`` cannot `` sync new collections
that are added to the ``staff`` database.

You can also rename collections in the ``students`` database. You cannot
rename collections in the ``staff`` database, renaming is only possible
when the entire target database is included in the filter. If you try to
rename a collection in the ``staff`` database, ``monogsync`` reports an
error and exists.

.. code-block::

   // This code works
   use admin
   db.runCommand( { renameCollection: "students.undergrad", to: "students.undergraduate" } )

   // This code produces an error, mongosync stops syncing
   use admin
   db.runCommand( { renameCollection: "staff.employees", to: "staff.onPayroll" } )


