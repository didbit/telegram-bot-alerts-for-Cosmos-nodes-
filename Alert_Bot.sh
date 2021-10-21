#!/bin/bash
#блок с переменными
GREEN_COLOR='\033[0;32m'
RED_COLOR='\033[0;31m'
WITHOU_COLOR='\033[0m'
TOKEN=2064126460:AAG-KpV**********NA
CHAT_ID=your chat ID
MESSAGE1="your moniker"
DELAY=60
TR=$'\n'
URL="https://api.telegram.org/bot$TOKEN/sendMessage"
#начало цикла
for (( ;; )); do
MESSAGE2=$(curl -s localhost:26657/status | jq .result.sync_info.catching_up)
#блок условия, если рассинхрон, то отправляем сообщение
if
  [ $MESSAGE2 != 'false' ] 
then
curl -s -X POST $URL -d chat_id=$CHAT_ID -d text=$MESSAGE1"-"$MESSAGE2
  fi
  

#Пауза в цикле
for (( timer=$DELAY; timer>0; timer-- ))
        do
                printf "* sleep for ${RED_COLOR}%02d${WITHOU_COLOR} sec\r" $timer
                sleep 1
        done
done
