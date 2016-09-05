## API

An API to allow user interaction with bucketlist app. Gives clients abilities to register as users of the API, create entries for their bucketlist, and see other user entries. Scripts are included in [`scripts`](scripts) to test controller actions.

### API Endpoints

| Verb   | URI Pattern            | Controller#Action |
|--------|------------------------|-------------------|
| GET | `/users` | `users#index` |
| GET | `/users/:id` | `users#show` |
| POST   | `/sign-up`             | `users#signup`    |
| POST   | `/sign-in`             | `users#signin`    |
| PATCH  | `/change-password/:id` | `users#changepw`  |
| DELETE | `/sign-out/:id`        | `users#signout`   |
| GET | `/entries` | `entries#index` |
| GET | `/entries/:id` | `entries#show` |
| POST | `/entries` | `entries#create` |
| PATCH | `/entries/:id` | `entries#update` |
| DELETE | `/entries/:id` | `entries#destroy` |
| GET | `/user-entries` | `entries#indexUserEntries` |

#### GET /users

Request:

```sh
curl --include --request GET http://localhost:3000/users \
--header "Authorization: Token token=token"
```

Response:

```sh
HTTP/1.1 200 OK
Content-Type: application/json; charset=utf-8

{
"users": [
{
"_id": "hexadecimal id",
"email": "another@example.email",
"entries": []
},
{
"_id": "hexadecimal id",
"email": "an@example.email",
"entries": []
}
]
}
```

#### GET /users/:id

Request:

```sh
curl --include --request GET http://localhost:3000/users/$ID \
--header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 200 OK
{
"user": {
"_id": "hexadecimal id",
"email": "another@example.email",
"entries": []
}
}
```
#### POST /sign-up

Request:

```sh
curl --include --request POST http://localhost:3000/sign-up \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password",
      "password_confirmation": "an example password"
    }
  }'
```

```sh
scripts/sign-up.sh
```

Response:

```sh
HTTP/1.1 201 Created
{
  "user":{
    "__v":0,
    "updatedAt":"2016-09-04T23:52:43.797Z",
    "createdAt":"2016-09-04T23:52:43.797Z",
    "email":"an@example.email",
    "_id":"hexadecimal id",
    "entries":[]
  }
}
```

#### POST /sign-in

Request:

```sh
curl --include --request POST http://localhost:3000/sign-in \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "an@example.email",
      "password": "an example password"
    }
  }'
```

Response:

```sh
HTTP/1.1 200 OK
{
  "user": {
    "id": 1,
    "email": "an@example.email",
    "token": "33ad6372f795694b333ec5f329ebeaaa"
  }
}
```

#### PATCH /change-password/:id

Request:

```sh
curl --include --request PATCH http://localhost:3000/change-password/$ID \
  --header "Authorization: Token token=$TOKEN" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "an example password",
      "new": "super sekrit"
    }
  }'
```

Response:

```sh
HTTP/1.1 204 No Content
```

#### DELETE /sign-out/:id

Request:

```sh
curl --include --request DELETE http://localhost:3000/sign-out/$ID \
  --header "Authorization: Token token=$TOKEN"
```

Response:

```sh
HTTP/1.1 204 No Content
```

#### GET /entries

Request:

```sh
curl --include --request GET http://localhost:3000/entries
```

Response:

```sh
HTTP/1.1 200 OK
{
  "entries": [
    {
      "_id": "hexadecimal id",
      "updatedAt": "2016-09-04T03:04:44.546Z",
      "createdAt": "2016-09-04T03:04:44.546Z",
      "goal": "goal example",
      "description": "description example",
      "finishBy": "YYYY-MM-DD",
      "location": "location example",
      "url": "example url",
      "_owner": "hexadecimal id",
      "__v": 0,
      "completed": Boolean
    },
    {
      "_id": "hexadecimal id",
      "updatedAt": "2016-09-04T04:06:02.097Z",
      "createdAt": "2016-09-04T04:06:02.097Z",
      "goal": "goal example",
      "description": "description example",
      "finishBy": "YYYY-MM-DD",
      "location": "location example",
      "_owner": "hexadecimal id",
      "__v": 0,
      "completed": Boolean
    }
  ]
}
```

#### GET /entries/:id

Request:

```sh
curl --include --request GET http://localhost:3000/entries/$ID \
  --header "Authorization: Token token=$TOKEN" \
```

Response:

```sh
HTTP/1.1 200 OK
{
  "entry":{
    "_id":"hexadecimal id",
    "updatedAt":"2016-09-04T04:22:10.107Z",
    "createdAt":"2016-09-04T04:22:10.107Z",
    "goal":"example goal",
    "description":"example description",
    "finishBy":"YYYY-MM-DD",
    "location":"example location",
    "_owner":"hexadecimal id",
    "__v":0,
    "completed": Boolean
  }
}
```

#### POST /entries

Request:

```sh
curl --include --request POST http://localhost:3000/entries \
  --header "Content-Type: application/json" \
    --header "Authorization: Token token=$TOKEN" \
  --data '{
    "entry": {
      "goal": "example goal",
      "description": "example description",
      "finishBy": "YYYY-DD-MM",
      "location": "example location"
    }
  }'
```

Response:

```sh
HTTP/1.1 200 OK
{
  "entry":{
    "__v":0,
    "updatedAt":"2016-09-04T04:22:10.107Z",
    "createdAt":"2016-09-04T04:22:10.107Z",
    "goal":"example goal",
    "description":"example description",
    "finishBy":"YYYY-DD-MM",
    "location":"example location",
    "_owner":"hexadecimal id",
    "_id":"hexadecimal id",
    "completed":false
  }
}
```

#### PATCH /entries/:id

Request:

```sh
```

Response:

```sh
```

## [License](LICENSE)

1.  All content is licensed under a CC­BY­NC­SA 4.0 license.
1.  All software code is licensed under GNU GPLv3. For commercial use or
    alternative licensing, please contact legal@ga.co.
