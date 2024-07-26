
The following restrictions apply to namespace remapping:

- Remap entries cannot contain the ``system``, ``config``, ``admin``, ``local``,
  or the internal ``mongosync`` databases.

- The database name on the destination cluster must be valid under
  :limit:`Restrictions on Database Names for Windows`.

- The destination database must not differ in only letter cases. That is, from
  ``Accounts`` to ``accounts``.

- The database on the destination cluster cannot contain a collection with
  the same name as any pre-existing collections.

- Collections created by a namespace remap cannot conflict with other collections
  in the migration.

  For example:
  .. code-block:: javascript

     {
         from: { database: "us" },
         to: { database: "unitedstates" }
     }

  If ``unitedstates`` is another database on the source cluster and both ``us``
  and ``unitedstates`` have a ``ny`` collection, the migration fails since it is
  attempting to merge the collections on the destination cluster.
