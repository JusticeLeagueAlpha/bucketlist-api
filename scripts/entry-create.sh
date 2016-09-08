



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


  curl --include --request POST http://localhost:3000/entries \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=V5m0cqzFO34GuN6V5eV8aHeEMgSyEe0iVqZOZjaoT2k=--gqsJcjZFM1lVoWsW0mlASnOpDg+PkcS2AThSp8cXvoE=" \
    --data '{
      "entry": {
        "goal": "listen to Jordan chew",
        "description": "listen to Jordan chew",
        "finishBy": "ASAP",
        "location": "General Assembly",
        "completed": "true"
      }
    }'
