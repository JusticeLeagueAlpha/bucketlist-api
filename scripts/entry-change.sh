#!/bin/bash

curl --include --request PATCH http://localhost:3000/entries/57c9fbc1764959a882d797e4 \
--header "Authorization: Token token=uTJcKsk5Jtw6R7YACCE1DlijkxLI5CKNx2Y5RuhzZE4=--BOpsjHrYPu5puTUMzgVBxcKs+DRDf9kLU/7TmJNe0nM=" \
  --header "Content-Type: application/json" \
  --data '{
    "entry": {
      "goal": "make love to a kangaroo"
    }
  }'
