#!/bin/bash
address=$1

HOT_ADDR='ak_N1a9HyfqpbvWV5vGejWMduf4yn8yeiXNz6AzU22iwGDT35NXh'
COLD_ADDR='ak_cfyeTLxf4TeWYjJFNMix7JtxLLMVpFFkbZBVMFmTHGPkaf2V'

if [ -z $address] ;then
   address=$HOT_ADDR
elif [ $address == "hot" ];then
   address=$HOT_ADDR
fi

res=`curl -s "http://localhost:3013/v2/accounts/$address"`
balance=`echo $res|jq .balance`
balance=`echo "scale=18; $balance / 1000000000000000000.0"|bc|awk '{printf "%.18f", $0}'`

if [ $address == $HOT_ADDR ] ; then
   res=`curl -s "http://localhost:3013/v2/accounts/$COLD_ADDR"`
   echo "res==$res"
   cold_balance=`echo $res|jq .balance`
   cold_balance=`echo "scale=18; $cold_balance / 1000000000000000000.0"|bc|awk '{printf "%.18f", $0}'`
   echo ""
   echo "热钱包: $hotAddr  余额: $balance AE"
   echo "冷钱包: $coldAddr 余额: $cold_balance AE"
else
   echo "Address: $address  Balance: $balance AE"
fi
echo ""
