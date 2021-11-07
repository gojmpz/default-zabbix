#!/bin/bash

openssl rand -hex 32 > /etc/zabbix/zabbix_agentd.psk

cp -r ./scripts/* /etc/zabbix/scripts/
chown root:zabbix /etc/zabbix/scripts/*
cp -r ./zabbix_agentd.d/* /etc/zabbix/zabbix_agentd.d/

cp ./zabbix_agentd.conf /etc/zabbix/

cp ./sudoers.d/zabbix_smartctl /etc/sudoers.d/
chmod 440 /etc/sudoers.d/zabbix_smartctl

echo "Your psk: "
cat /etc/zabbix/zabbix_agentd.psk
echo "Please, edit config file manually /etc/zabbix/zabbix_agentd.conf"