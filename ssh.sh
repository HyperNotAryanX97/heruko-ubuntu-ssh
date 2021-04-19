#!/bin/bash
git clone https://github.com/sasukeuchiha-clan/heruko-ubuntu-ssh ssh

cd ssh

tg(){
	bot_api=1692865707:AAHvKZogI5sUGtqjd2sZvNl8tib0Q_xcYkY # Your tg bot api, dont use my one haha, it's better to encrypt bot api too.
	your_telegram_id=$1 # No need to touch 
	msg=$2 # No need to touch
	curl -s "https://api.telegram.org/bot${bot_api}/sendmessage" --data "text=$msg&chat_id=${your_telegram_id}"
}

id=571213272 # Your telegram id

tmate -S /tmp/tmate.sock new-session -d && tmate -S /tmp/tmate.sock wait tmate-ready && send_shell=$(tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}') && tg $id "Build Failed" && tg $id "$send_shell"
