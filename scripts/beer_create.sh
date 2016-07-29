curl --include --request POST http://localhost:3000/beers \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=BAhJIiVhZWU1MTEzOWNkNmVmM2ZiZDIwNmI0YzdjNTcyM2ExNQY6BkVG--f0e55289b84d0852eae0afdb845378c0337ca389"  \
  --data '{
    "beer": {
      "id": 1,
      "beer_name": "Allagash White",
      "company_name": "Allagash Brewing Company",
      "beer_style": "Belgian White",
      "abv": 10.3,
      "notes": "I love this beer!  It is delicious!",
      "rating": 4,
      "drink_again": true,
      "created_at": "20-May-2011 15:20:00:00:00",
      "updated_at": "20-May-2011 15:20:00:00:00",
      "make_private": false
    }
  }'
