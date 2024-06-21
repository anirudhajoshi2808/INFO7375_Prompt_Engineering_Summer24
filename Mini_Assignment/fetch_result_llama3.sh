#!/bin/bash

URL="http://localhost:11434/api/generate"
DATA='{
  "model": "llama3",
  "prompt": "Why is the sky blue?, Answer in 1 sentence"
}'

curl -s -N -X POST $URL -H "Content-Type: application/json" -d "$DATA" | \
while IFS= read -r line
do
  
  response=$(echo $line | jq -r '.response')
  if [ "$response" != "null" ]; then
    echo -n "$response"
  fi

  done=$(echo $line | jq -r '.done')
  if [ "$done" == "true" ]; then
    break
  fi
done

echo 
