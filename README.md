# telegram-bot-alerts-for-Evmos
First of all go to
https://telegram.me/BotFather

Add new bot

/newbot

Get token to access the HTTP API:example (2081043765:AAFm-yhP*************tNGXtA1_s)

Start your bot

 /start

Get chat ID 
https://api.telegram.org/bot"token"/getUpdates

Example
(https://api.telegram.org/bot2081043765:AAFm-yhP*************tNGXtA1_s/getUpdates)

Add script to your server

wget https://raw.githubusercontent.com/didbit/telegram-bot-alerts-for-Evmos/main/Alert_Bot.sh

Add permission

chmod a+x Alert_Bot.sh

Change script ( add your chat ID and so on)

nano Alert_Bot.sh

Run it

 ./bot_tel.sh
