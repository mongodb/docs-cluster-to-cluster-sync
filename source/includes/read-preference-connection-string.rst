In the connection string, you can specify read preference on a
per-connection basis. By default, ``mongosync`` sets the source cluster
read preference to :readmode:`nearest` to distribute reads evenly across
nodes. For more information on specifying read preference options in the
connection string, see :ref:`connections-read-preference`