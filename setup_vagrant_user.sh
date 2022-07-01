#!/bin/bash
PUBLIC_KEY="ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIJMnq1UL0GsMFPHPr3D5GY81YUVM5c3YX64jhbW4Y6BS openpgp:0xDB92184E"
VM_USER=ansible

useradd -m -s /bin/bash $VM_USER 

echo "$VM_USER ALL=(ALL) NOPASSWD:ALL" >> /etc/sudoers
mkdir /home/$VM_USER/.ssh
echo $PUBLIC_KEY > /home/$VM_USER/.ssh/authorized_keys

