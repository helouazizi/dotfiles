#!/bin/bash
sudo apt update && sudo apt install ansible -y

ansible-playbook setup-machine.yml --ask-become-pass