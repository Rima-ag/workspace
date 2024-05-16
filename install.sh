#!/usr/bin/bash 

setup-workspace

setup-repo dogweb
setup-repo dd-analytics
setup-repo devtools
setup-repo terraform-config

# Signing key issues
echo "export SSH_AUTH_SOCK=~/.ssh/ssh_auth_sock" >> ~/.bashrc

cd dd/dogweb && rake workspaces:setup_workspace
echo "source ~/.config/dogweb.shellrc" >> ./.bashrc
echo "source ~/.config/dogweb.shellrc" >> ./.zshrc
