# cheat sheet #


| command   | description               | syntax                                                        |
|---        |---                        |---                                                            |
| tmux      | split window              | <code>ctrl-b " or %</code>                                    |
| sed       | uncomment lines in file   | <code>sed '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config</code> |
| sed       | uncomment line, save changes, and save copy of old file as .old |<code>sed -i.old '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config</code>|
| awk       | get all uncommented lines |<code> awk '!/^#|^$/ {print}' /etc/ssh/sshd_conf</code>|
| awk       | get all users             |<code> awk -F":" '$3 > 999 {print $1}' /etc/passwd </code>|
| awk       | filter dmesg by column string | <code>dmesg | awk 'tolower($2) ~ /bluetooth/ {print $1 " " $2}' </code> |
| vim       | search replace            | <code>:%s/foo/bar/gc</code> |
| vim       | yank to register r        | <code>"ry</code> |
| vim       | paste from register r     | <code>"rp</code> |
| vim       | show registers            | <code>:reg or :reg r</code> |
| bash      |                           | <code></code>|
| grep      |                           | <code></code>|
| git       | add all changed           | <code>git add -u .</code> |
| find      | find and unzip zip files  | <code>find ./ -name '*.zip' -execdir unzip -r {} \;</code> |
| find      | find and unrar rar files  | <code>find ./ -name '*.rar' -execdir unrar e -o+ {} \;</code> |
| find      | find and move epub files  | <code>find ./ -name '*.epub' -execdir mv {} ~/Books \;</code> |
| nmap      |                           | <code></code>|
| journalctl | today error logs         | <code>journalctl --since today -p err --no-pager</code> |
| journalctl | NetworkManager error logs since boot | <code>journalctl -b -u NetworkManager</code> |
| systemctl | list enabled services     | <code>systemctl list-unit-files \| grep enabled</code> |
| systemctl | list failed services      | <code>systemctl list-units --state=failed  \| grep enabled</code> |
| tar       | pack                      | <code>tar -cvf apa.tar ./apa ; tar cvfz apa.tar.gz ./apa ; tar cvfj apa.tar.tb2 ./apa</code> |
| tar       | unpack                    | <code>tar -xvf apa.tar ; tar xvfz apa.tar.gz ; tar xvfj apa.tar.tb2</code> |
