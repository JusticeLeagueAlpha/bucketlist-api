#!/bin/bash

curl --include --request PATCH http://localhost:3000/entries/$ID \
--header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "entry": {
      "goal": "make love to a kangaroo"
    }
  }'
