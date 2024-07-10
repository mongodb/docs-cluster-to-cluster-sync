.. note:: 

   Starting in ``mongosync`` 1.7.3, ``mongosync`` can take at least two minutes 
   to respond when you resume or restart a sync operation. This means that 
   until ``mongosync`` responds, any calls to the :ref:`c2c-api-progress` 
   endpoint might fail.
