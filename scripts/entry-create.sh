



curl --include --request POST http://localhost:3000/entries \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BuBYtfA9Zbd8UpBkGO+rju1B7OMZSs9w2ZqVMcGNH54=--w8c3vwHNh6cbcz29dgcnNb29aIiLYIM/TSuaowGzwac=" \
  --data '{
    "entry": {
      "goal": "catch a pikachu",
      "description": "never let him out of his pokeball",
      "finishBy": "2016-10-10",
      "location": "Pallet Town"
    }
  }'
