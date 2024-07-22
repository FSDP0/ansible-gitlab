#!/bin/bash

TAGS=$@

if [ ! -z $TAGS ]
then
    ansible-playbook -i vm-hosts.server.ini playbook.yml -t "$TAGS" -e "@vars/external-vars.server.yaml"
else
    ansible-playbook -i vm-hosts.server.ini playbook.yml -e "@vars/external-vars.server.yaml"
fi