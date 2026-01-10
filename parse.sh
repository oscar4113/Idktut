#!/bin/bash

json=$(cat list.json)
names=$(echo "$json" | jq -r '.games[].Name')
id=$(echo "$json" | jq -r '.games[].ID')
url=$(echo "$json" | jq -r '.games[].Url')
echo "$names"
echo "game number to install:"
read entered_id
fin=$(echo "$json" | jq -r ".games[] | select(.ID == \"$entered_id\") | .Url")
echo $fin