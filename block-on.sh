curl -X PUT "https://api.cloudflare.com/client/v4/zones/e856eac354b9546912d89f1bcf9c1588/firewall/rules/2af598963e284e3fba303eeeea3d45f4" \
     -H "X-Auth-Email: nguyenanhtai04091992vp@gmail.com" \
     -H "X-Auth-Key: 1a4ca6fd329aa0d875ef065094e66ff21f1ea" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 1000,
     "paused": false,
     "description": "Block Quốc Tế",
     "filter": {
    "id": "b7c0c4ec1204437fafc8c2b36a77c3af",
    "expression": "(ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Linux; Android\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (iPhone; CPU iPhone OS \" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Windows NT\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\") or (ip.geoip.country ne \"VN\" and http.user_agent contains \"Mozilla/5.0 (Macintosh; Intel Mac OS\" and http.request.version in {\"HTTP/2\" \"HTTP/3\" \"HTTP/1.1\"} and http.request.method in {\"GET\" \"POST\"} and cf.threat_score le 5 and ip.geoip.continent eq \"AS\")",
    "paused": false,
    "description": "Block Quốc Tế"
  }
  }'
