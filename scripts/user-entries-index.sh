curl --request GET http://localhost:3000/user-entries \
  --header "Authorization: Token token=$TOKEN" | jsonlint \
