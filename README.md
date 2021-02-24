# cheat sheet #


| command   | description               | syntax                                                        |
|---        |---                        |---                                                            |
| tmux      | split window              | <code>ctrl-b " or %</code>                                    |
| tmux      | change window             | <code>ctrl-b <h/j/k/l></code>                                    |
| tmux      | resize window             | <code>ctrl-b <H/J/K/L></code>                                    |
| sed       | uncomment lines in file   | <code>sed '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config</code> |
| sed       | uncomment lines, save changes, and save copy of old file as .old |<code>sed -i.old '/pubkeyauthentication/i s/^#//' /etc/ssh/sshd_config</code>|
| awk       | get all uncommented lines |<code> awk '!/^#|^$/ {print}' /etc/ssh/sshd_conf</code>|
| awk       | get all users             |<code> awk -F":" '$3 > 999 {print $1}' /etc/passwd </code>|
| awk       | filter dmesg by column string | <code>dmesg | awk 'tolower($2) ~ /bluetooth/ {print $1 " " $2}' </code> |
| vim       | search replace            | <code>:%s/foo/bar/gc</code> |
| vim       | yank to register r        | <code>"ry</code> |
| vim       | paste from register r     | <code>"rp</code> |
| vim       | show registers            | <code>:reg or :reg r</code> |
| vim       | show registers            | <code>:reg or :reg r</code> |
| bash      | command for specific column in file | <code> awk '{print $2}' filename | while read line; do du -h $line ;done</code>|
| grep      |                           | <code></code>|
| git       | add all changed           | <code>git add -u .</code> |
| find      | find and cat all csv files & pipe to vim | <code>find ./ -name '*.csv' -exec cat {} \; | vim -</code> |
| find      | find and unzip zip files  | <code>find ./ -name '*.zip' -execdir unzip -r {} \;</code> |
| find      | find and unrar rar files  | <code>find ./ -name '*.rar' -execdir unrar e -o+ {} \;</code> |
| find      | find and move epub files  | <code>find ./ -name '*.epub' -execdir mv {} ~/Books \;</code> |
| nmap      | scan all ports            | <code>nmap -p- </code>|
| tar       | pack                      | <code>tar -cvf apa.tar ./apa ; tar cvfz apa.tar.gz ./apa ; tar cvfj apa.tar.tb2 ./apa</code> |
| tar       | unpack                    | <code>tar -xvf apa.tar ; tar xvfz apa.tar.gz ; tar xvfj apa.tar.tb2</code> |
