
The following restrictions apply to namespace remapping:

- Namespace remapping doesn't support changes to collection names.

- Namespace remapping doesn't permit writing to the ``system``, ``config``, ``admin``,
  or ``local`` databases, or writing to internal databases used by ``mongosync``.

- The database name on the destination cluster must be valid under Windows
  restrictions.

  For more information, see :limit:`Restrictions on Database Names for Windows`.

- Use namespace remapping to change the case of the database name is not supported.

- The database on the destination cluster cannot contain a collection with
  the same name as any preexisting collections.

- Collections created by a namespace remap cannot conflict with other collections
  in the migration.

  For example:

  .. code-block:: javascript

     {
         from: { database: "us" },
         to: { database: "unitedstates" }
     }

  If ``unitedstates`` is another database on the source cluster and both ``us``
  and ``unitedstates`` contain a ``ny`` collection, the migration fails since it's
  attempting to merge the collections on the destination cluster.
