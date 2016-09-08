curl --request GET http://localhost:3000/user-completed \
  --header "Authorization: Token token=$TOKEN" | jsonlint \

curl --include --request GET http://localhost:3000/completed-entries



curl --include --request GET http://localhost:3000/user-completed \
  --header "Authorization: Token token=$TOKEN"
