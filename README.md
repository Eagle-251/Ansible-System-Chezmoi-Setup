# Ansible Chezmoi and System Setup

This is a collection of two simple playbooks designed to be a basic starting fornew remote servers. The playbooks can
- provision a VM using Ansible's [vmware_guest module](https://docs.ansible.com/ansible/latest/collections/community/vmware/vmware_guest_module.html#ansible-collections-community-vmware-vmware-guest-module)
- Install Dotfiles using the [Chezmoi](https://www.chezmoi.io/) dotfile manager.

A suggested Vagrantfile is also included for testing

## Usage

### Requirements

The [deploy](provisioning/deploy.yml) playbook uses three Ansible Galaxy roles from Jeff Geerling to bootstrap the server:
- [Firewall](https://galaxy.ansible.com/geerlingguy/firewall)
- [Security](https://galaxy.ansible.com/geerlingguy/security)
- [Docker](https://galaxy.ansible.com/geerlingguy/docker)

These must be installed with `ansible-galaxy install <name_of_role>` before running the playbook.

### Variables 

You will need to set a user and provide an ssh public key.
See the default Variables for each role for more info.

## TODO

- [ ] Improve the stablity of the chezmoi role.
