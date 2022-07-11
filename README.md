# Ansible Chezmoi and System Setup

This is a collection of two simple playbooks designed to be a basic starting point for new remote servers. The playbooks can
- provision a VM using Ansible's [vmware_guest module](https://docs.ansible.com/ansible/latest/collections/community/vmware/vmware_guest_module.html#ansible-collections-community-vmware-vmware-guest-module)
- Install Dotfiles using the [Chezmoi](https://www.chezmoi.io/) dotfile manager.
- Add server to tailnet using [artis3n's](https://github.com/artis3n) [tailscale role](https://galaxy.ansible.com/artis3n/tailscale)

A suggested Vagrantfile is also included for testing

## Usage

### Requirements
The [deploy](provisioning/deploy.yml) playbook uses some Ansible Galaxy roles to bootstrap the server:
- [Firewall](https://galaxy.ansible.com/geerlingguy/firewall)
- [Security](https://galaxy.ansible.com/geerlingguy/security)
- [Docker](https://galaxy.ansible.com/geerlingguy/docker)
- [Tailscale](https://galaxy.ansible.com/artis3n/tailscale)

These must be installed with `ansible-galaxy install <name_of_role>` before running the playbook.

### Variables 

You will need to set a user and provide an ssh public key and provide a auth_key for tailscale.
See the default Variables for each role for more info.

## TODO

- [ ] Improve the stablity of the chezmoi role.
