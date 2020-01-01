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
awk -f":" '$3 > 999 {print $1}' /etc/passwd

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


## find ##

## nmap ##


