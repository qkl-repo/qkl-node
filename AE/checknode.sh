#!/bin/bash
local_block_height=`curl -s -X GET http://127.0.0.1:3013/v2/status|jq .top_block_height`
third_block_height=`curl -s -X GET https://mainnet.aeternity.io/v2/status|jq .top_block_height`

height_diff=$(($third_block_height-$local_block_height))
echo "-------------------------------------------------------------------------------------------------------"
echo  "本地节点高度: $local_block_height 三方节点高度: $third_block_height 当前高度差: $height_diff "
echo ""
echo ""
