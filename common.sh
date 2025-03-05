
#find any file named "common.sh"
find . -type f -name common.sh
#find any file named "common.sh" and displays as output of ls -l command
find . -type f -name common.sh | xargs -I {} ls -l

#find any file modified after 2024-12-31
find . -type f -newermt 2024-12-31
#find any file modified after 2024-12-31 excluding the ".git" folder
find . ! -path "./.git*" -type f -newermt 2024-12-31
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command changing the datetime display
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l --time-style="+%Y-%m-%d" {}
#find any file modified after 2024-12-31 excluding the ".git" folder and displays as output of ls -l command changing the datetime display and separator
find . ! -path "./.git*" -type f -newermt 2024-12-31 | xargs -I {} ls -l --time-style="+%Y-%m-%d" {} | tr " " ","

#display folder occupation
df -h
#display list of folders sort by dimension
du -h --max-depth=1 | sort -rh
#display list of files sort by dimension
ls -lhS

#verify public ip
curl -s ifconfig.me
curl -s icanhazip.com
curl -s checkip.amazonaws.com
wget -qO- ifconfig.me
dig +short myip.opendns.com @resolver1.opendns.com
host myip.opendns.com resolver1.opendns.com

#verify internet connection
ip a
traceroute 8.8.8.8
ip route
ping -c 4 8.8.8.8
nc -l -p 8080

#verify ssh connection
ssh -o MACs=hmac-sha2-256 172.16.81.75
ssh -Q mac
ssh-keygen -R 172.16.81.75
