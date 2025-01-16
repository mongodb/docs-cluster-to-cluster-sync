..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1
   :stub-columns: 1

   * - Sync Type
     - Required Source Permissions
     - Required Destination Permissions

   * - default
     - - atlasAdmin
       - backup
     - - atlasAdmin

   * - write-blocking, reversing, or multiple reversals
     - - atlasAdmin
       - backup
       - bypassWriteBlockMode privilege
     - - atlasAdmin
       - backup
       - bypassWriteBlockMode privilege

For details on Atlas roles, see: :atlas:`Atlas User Roles
</reference/user-roles/>`.

To update Atlas user permissions, see:
:atlas:`Manage Access to a Project </access/manage-project-access/>`.


