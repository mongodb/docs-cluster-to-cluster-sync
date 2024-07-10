curl -X POST "http://localhost:27182/api/v1/start" --data '
   {
      "source": "cluster0",
      "destination": "cluster1",
      "namespaceRemap": [
        {
           "from": { "database": "accounts", "collection": "new_england" },
           "to": { "database": "accounts", "collection": "us_northeast" }
        }
      ]
   } '
