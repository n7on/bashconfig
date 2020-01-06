# cheat sheet #


## tmux ##

### split window ###
ctrl-b " or %

## sed ##

### uncomment line ###

sed '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config

### uncomment line, save changes, and save copy of old file as .old
sed -i.old '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config

## awk ##

### get all uncommented lines ###
awk '!/^#|^$/ {print}' /etc/ssh/sshd_conf

### get all users ###
awk -F":" '$3 > 999 {print $1}' /etc/passwd


### filter dmesg by column string ###
dmesg | awk 'tolower($2) ~ /bluetooth/ {print $1 " " $2}'

## vim ##

### search replace ###
:%s/foo/bar/gc

### yank to register r ###
"ry

### paste from register r ###
"rp

### show registers ###
:reg or :reg r

## bash ##

## grep ##

## git ##

### add all changed ###
git add -u .

## find ##

## nmap ##


## journalctl ##

### today error logs ###
journalctl --since today -p err --no-pager

### NetworkManager error logs since boot ###
journalctl -b -u NetworkManager

## systemctl ##

### list enabled services ###
systemctl list-unit-files | grep enabled


## tar ##

### pack ###

tar -cvf apa.tar ./apa
tar cvfz apa.tar.gz ./apa
tar cvfj apa.tar.tb2 ./apa


### unpack ###

tar -xvf apa.tar
tar xvfz apa.tar.gz
tar xvfj apa.tar.tb2

