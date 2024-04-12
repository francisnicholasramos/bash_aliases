#profile
profile() {
nano .profile
}

#save bash profile
save() {
source .profile
}

#crtsh
crtsh() {
curl -s  https://crt.sh/\?q\=\%.$1\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u
}
