curl --include --request POST http://localhost:3000/entries \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "goal": "listen to Jordan chew",
      "description": "listen to Jordan chew",
      "finishBy": "ASAP",
      "location": "General Assembly"
    }
  }'
