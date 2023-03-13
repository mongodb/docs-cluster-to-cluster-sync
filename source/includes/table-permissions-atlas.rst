..
   Comment: The nested lists need blank lines before and after each list
            plus extra indents 

.. list-table::
   :header-rows: 1

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

   * - write-blocking or reversing
     - source cluster
     -

         - atlasAdmin
         - backup
         - bypassWriteBlockMode privilege

   * - write-blocking or reversing
     - destination cluster
     -

         - atlasAdmin
         - backup
         - bypassWriteBlockMode privilege

