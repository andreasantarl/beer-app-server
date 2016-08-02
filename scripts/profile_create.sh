curl --include --request POST http://localhost:3000/profiles \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVjMjliMGE2N2ZjOGQ5NmExNDQ5NjUzNTdmNjhkOTk3NgY6BkVG--dacb725404a4c43da2542e16788f47a4821415e9"  \
  --data '{
    "profiles": {
      "username": "Person 2 Test",
      "first_name": "Me",
      "last_name": "LastName",
      "user_id": 2
    }
  }'


  curl --include --request GET http://localhost:3000/profiles/18 \
    --header "Content-Type: application/json" \
    --header "Authorization: Token token=BAhJIiVjMjliMGE2N2ZjOGQ5NmExNDQ5NjUzNTdmNjhkOTk3NgY6BkVG--dacb725404a4c43da2542e16788f47a4821415e9"  \
