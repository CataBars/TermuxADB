#!/data/data/com.termux/files/usr/bin/sh

> pair.txt
success="Successfully paired"

termux-notification \
  --title "ADB pairing" \
  --button1 "Enter" \
  --button1-action "echo \$REPLY > $(pwd)/pair.txt"

while true; do
    pair=$(cat pair.txt)
    if [[ "$pair" =~ " " ]]; then
        read -r ip_port code <<< "$pair"
        echo $ip_port $code
        output=$(adb pair $ip_port $code)
	echo $output
	if [[ "$output" =~ "$success" ]]; then
	    echo "Enter 'adb connect [IP]:[PORT]' shown below device name"
	    > pair.txt
	    break
	else
	    echo "Error, perhaps you entered the wrong data?"
	    > pair.txt
	fi
    else
	sleep 2
    fi
done
