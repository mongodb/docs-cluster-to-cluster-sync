
The following restrictions apply to namespace remapping:

- Namespace remapping doesn't support changes to collection names.

- Namespace remapping doesn't permit writing to the ``system``, ``config``, ``admin``,
  or ``local`` databases, or writing to internal databases used by ``mongosync``.

- The database name on the destination cluster must be valid under Windows
  restrictions.

  For more information, see :limit:`Restrictions on Database Names for Windows`.

- Use of namespace remapping to change the case of the database name is not supported.

- The database on the destination cluster cannot contain a collection with
  the same name as any preexisting collections.

- Collections created by a namespace remap cannot conflict with other collections
  in the migration.

  For example, consider a source cluster with two databases, ``us`` and ``unitedstates``
  and a namespace remapping that changes ``us`` to ``unitedstates``, effectively
  merging the two databases into one. If both databases contain a ``ny`` collection,
  the migration fails since it attempts to merge the two collections on the destination
  cluster.
