curl -X PUT "https://api.cloudflare.com/client/v4/zones/e856eac354b9546912d89f1bcf9c1588/firewall/rules/b74d02367fc94d5cac551818ec32dc29" \
     -H "X-Auth-Email: nguyenanhtai04091992vp@gmail.com" \
     -H "X-Auth-Key: 1a4ca6fd329aa0d875ef065094e66ff21f1ea" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "managed_challenge",
     "priority": 564,
     "paused": true,
     "description": "Captcha Việt Nam",
     "filter": {
    "id": "25aa65bdcf774b549889cc98cf68a3cb",
    "expression": "(ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country eq \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\")",
    "paused": false,
    "description": "Captcha Việt Nam"
  }
  }'
