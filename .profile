#Base folder
rootdir() {
cd /
}

#Home directory
home() {
cd /home/niko
}

#C 
c() {
cd /mnt/c
}

#profile
profile() {
vim .profile
}

#save bash profile
save() {
source .profile
}

#crtsh
crtsh() {
curl -s  https://crt.sh/\?q\=\%.$1\&output\=json | jq -r '.[].name_value' | sed 's/\*\.//g' | sort -u
}

#python3_server
pyserver() {
python3 -m http.server 8000
}

#python2_server
pyserver2() {
python -m SimpleHTTPServer 8000
}

#dirsearch
dirsearch() {
cd dirsearch 
python3 dirsearch.py -u $1 -e $2 -t 100 -H 'X-FORWARDED-FOR: 127.0.0.1'
}
