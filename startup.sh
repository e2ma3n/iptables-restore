#! /bin/bash
# Programming and idea by : E2MA3N [Iman Homayouni]
# Gitbub : https://github.com/e2ma3n
# Email : e2ma3n@Gmail.com
# iptables-restore v2.0 - iptables rules restart at 00:00 and system reboot
# Last update : 29-December-2019_15:05:39
# ----------------------------------------------------------------------------- #

# comment : check /var/log/ directory
[ ! -d /var/log/ ] && mkdir -p /var/log/

# comment : get correct time and date
time=$(date +"%d-%B-%Y_%T")

# comment : check rules file
if [ ! -f /opt/iptables-restore/rules.txt ] ; then
    echo "$time : restore iptables rules failed. rules.txt not found" >> /var/log/iptables-resotre.log
    exit 1
fi

# comment : restore iptables rules
if [ -f $(which iptables-restore) ] ; then
    iptables-restore < /opt/iptables-restore/rules.txt
    echo "$time : restore iptables rules successfully" >> /var/log/iptables-resotre.log
else
    echo "$time : restore iptables rules failed. iptables-restore command not found" >> /var/log/iptables-resotre.log
fi
