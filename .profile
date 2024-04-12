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

#python_server
pyserver() {
python3 -m http.server 8000
}

#dirsearch
dirsearch() {
cd dirsearch 
python3 dirsearch.py -u $1 -e $2 -t 100 -H 'X-FORWARDED-FOR: 127.0.0.1'
}
