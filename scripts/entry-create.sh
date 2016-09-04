



curl --include --request POST http://localhost:3000/entries \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=bRMLMc/SyQJlpGdSdf0RbB5CTMRC2wvfbalTKnvzfAA=--ltVp+wsWE3EOpo/J2TIrKaTkSLkntskL7F4KYmVD6CA=" \
  --data '{
    "entry": {
      "goal": "ride an elephant",
      "description": "Go overseas",
      "finishBy": "2017-09-01",
      "location": "Thailand",
      "url": "http://www.weekendnotes.com/spot-a-kangaroo-around-brisbane"
    }
  }'
