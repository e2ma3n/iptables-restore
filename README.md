# iptables-restore

## Introduction
iptables rules restart at 00:00 and system reboot

## What distributions are supported ?
All version of debian linux.

| Distribution | Version |
| ---------- | ----------- |
| Debian     | debian-9.9.0-amd64-netinst |


## Dependencies

| Dependency | Description |
| ---------- | ----------- |
| mkdir      | Create the DIRECTORY(ies), if they do not already exist. |
| date       | Display the current time in the given FORMAT, or set the system date. |
| iptables-restore       | Restore IP Tables rules. |
| which      | which  returns  the  pathnames of the files (or links) which would be executed in the current environment, had its arguments been given as commands in a strictly  POSIX-conformant  shell. |


## How to install ?
```
# su - root
# git clone https://github.com/e2ma3n/iptables-restore
# mkdir /opt/iptables-restore/
# mv iptables-restore/startup.sh /opt/iptables-restore/
# mv iptables-restore/rules.txt /opt/iptables-restore/
# chmod +x /opt/iptables-restore/startup.sh
# echo '@reboot root /opt/iptables-restore/startup.sh' >> /etc/crontab
# echo '0 0 * * * root /opt/iptables-restore/startup.sh' >> /etc/crontab
```
edit /opt/iptables-restore/rules.txt
you can read log file using :
```
# tail -f /var/log/iptables-resotre.log
```
