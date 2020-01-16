# cheat sheet #


| command  | description  | syntax  |
|---|---|---|
| tmux | split window | ctrl-b " or %  |
| sed  | uncomment lines in file | sed '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config|
| sed | uncomment line, save changes, and save copy of old file as .old |sed -i.old '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config|
| awk | get all uncommented lines | awk '!/^#|^$/ {print}' /etc/ssh/sshd_conf|
| awk | get all users | awk -F":" '$3 > 999 {print $1}' /etc/passwd |
| awk | filter dmesg by column string | dmesg | awk 'tolower($2) ~ /bluetooth/ {print $1 " " $2}' |
| vim | search replace | :%s/foo/bar/gc |
| vim | yank to register r | "ry |
| vim | paste from register r | "rp |
| vim | show registers | :reg or :reg r |
| bash |||
| grep |||
| git | add all changed | git add -u . |
| find |||
| nmap |||
| journalctl | today error logs | journalctl --since today -p err --no-pager |
| journalctl | NetworkManager error logs since boot | journalctl -b -u NetworkManager |
| systemctl | list enabled services | systemctl list-unit-files | grep enabled |
| tar | pack | tar -cvf apa.tar ./apa <br />tar cvfz apa.tar.gz ./apa <br />tar cvfj apa.tar.tb2 ./apa |
| tar | unpack | tar -xvf apa.tar <br />tar xvfz apa.tar.gz <br />tar xvfj apa.tar.tb2 |
