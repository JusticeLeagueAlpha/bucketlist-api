



curl --include --request POST http://localhost:3000/entries \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=naixWEVhxUWOppnZuD1vHIpnX+co6EW5GqaSt0abb88=--IUCt8/svJjYS+Oe048+tAXHV544tBmBvTUKxUWFhCY4=" \
  --data '{
    "entry": {
      "goal": "listen to Jordan chew",
      "description": "listen to Jordan chew",
      "finishBy": "ASAP",
      "location": "General Assembly"
    }
  }'
