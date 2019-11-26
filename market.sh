curl -X GET \
-H "x-api-key: $ORO_TOKEN" \
https://api.originsro.org/api/v1/market/list |
(echo -n '{"message":"data update", "content":"'; \
base64 -; echo '", "sha":"'; \
curl -X GET https://api.github.com/repos/morrah/oro-market/contents/market.json | jq -r ".sha"; echo '"}') |
curl -X PUT \
-H "Authorization: token $GITHUB_TOKEN" \
-H "Content-Type: application/json" \
-d @- "https://api.github.com/repos/morrah/oro-market/contents/market.json"