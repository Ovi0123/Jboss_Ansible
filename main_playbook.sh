#!/bin/bash
ansible-playbook jboss_domain_setup.yml
sleep 60s
ansible-playbook jboss_setup.yml
