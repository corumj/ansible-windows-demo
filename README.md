# Ansible Windows Demo
This demo should showcase a variety of Ansible playbooks against a Windows environment.  Beyond just patching, Ansible can be used to deploy an entire Windows infrastructure, join domains, and manage applications.

# Requirements
AWS Credentials
Ansible Tower 3.7.3+ from RHPDS with Code-Server or the ability to SSH to your Tower host

# Setup
1. Login to the code-server environment from RHPDS, and clone this repository to the student folder, or ssh to your Tower server and check out this repo 
2. Update `group_vars/all.yml` with your name.
3. Make a copy of the login_info_template.yml named login_info.yml and fill out the login information for Ansible Tower as well as your AWS credentials.
4. run `./setup.sh` to load all the demo playbooks into your Tower instance as well as setup the AWS Console and Machine credentials you'll need to automate with.

Note: Right before you are ready to run the demo it is a good idea to run the Domain Services Setup job template this creates in tower.  It does take quite a few minutes for the provisioning and setup of the Active Directory server so doing this live is not fun.  If you don't need the AD server, at a minimum you'll need to run the Amazon Infrastructure Setup playbook before running the provisioning template.

# Run the demo