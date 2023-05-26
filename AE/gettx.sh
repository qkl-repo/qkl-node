#!/bin/bash
txid=$1
while [ -z $txid ]
do
  read -p "Please input txid: "  txid
done

curl "http://127.0.0.1:3013/v2/transactions/$txid"|jq .
curl -k "https://mainnet.aeternity.io/v2/transactions/$txid"|jq .

