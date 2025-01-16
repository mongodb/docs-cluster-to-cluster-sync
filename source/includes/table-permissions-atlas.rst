..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1
   :stub-columns: 1

   * - Sync Type
     - Target
     - Required Permissions

   * - default
     - source cluster
     -

         - atlasAdmin
         - backup

   * - default
     - destination cluster
     -

         - atlasAdmin

   * - write-blocking, reversing, or multiple reversals
     - source cluster
     -

         - atlasAdmin
         - backup
         - bypassWriteBlockMode privilege

   * - write-blocking, reversing, or multiple reversals
     - destination cluster
     -

         - atlasAdmin
         - backup
         - bypassWriteBlockMode privilege

For details on Atlas roles, see: :atlas:`Atlas User Roles
</reference/user-roles/>`.

To update Atlas user permissions, see:
:atlas:`Manage Access to a Project </access/manage-project-access/>`.


