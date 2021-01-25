#!/bin/bash

pushd "$( dirname "${BASH_SOURCE[0]}" )"
git reset --hard
git pull 
ansible-galaxy collection install -r collections/requirements.yml
ansible-playbook demo_setup.yml 
popd