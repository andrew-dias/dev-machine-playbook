# dev-machine-playbook

This [Ansible](https://github.com/ansible/ansible) playbook configures my personal development machine.  It is designed to run on a fresh Linux Mint 18 installation, and has not been tested with any other distributions.

The playbook can also be configured to clone any number of dotfiles repositories and execute a specified installer script on each.

## Requirements

Before running this playbook you must have both [Git](https://git-scm.com/) and [Ansible](https://github.com/ansible/ansible) installed.


```shell
apt add-repository ppa:git-core/ppa
apt add-repository ppa:ansible/ansible
apt update
apt install git
apt install ansible
```

## Installation

1. Clone this repository

  ```shell
  git clone https://github.com/andrew-dias/dev-machine-playbook.git
  ```

1. Install Ansible dependencies

  The playbook dependencies are defind in `requirements.yml`. 

  ```shell
  ansible-galaxy install -r requirements.yml
  ```

  The playbook uses `ansible.cfg` to set the roles installation path to your `~/.local/share/ansible/roles` folder due to Ansible issue [#16010](https://github.com/ansible/ansible/issues/16010).

1. Run the playbook

  ```shell
  ansible-playbook playbook.yml
  ```
  
  The playbook takes an optional --extra-vars parameter to receive a .yml file that (typically) defines dotfiles repos to clone and install.  For example, a file `local-vars.yml` could be maintaind on the local filesystem:
  
  ```
  ---
  dotfiles:
    - name: base
      repo: https://github.com/andrew-dias/dotfiles-base.git
      dest: ../dotfiles-base
      runner: install
    - name: home
      repo: https://github.com/andrew-dias/dotfiles-home.git
      dest: ../dotfiles-home
      runner: install
  ```

  And then fed to Ansible:

  ```shell
  ansible-playbook playbook.yml --extra-vars=@../local-vars.yml
  ```

1. Log out to ensure all changes are activated

## Manual Steps (for now)

* ssh
* Gitkraken
* IntelliJ
* Atom
* Node (through nvm)
* Grails (through sdkman)
* Gradle (through sdkman)
* Desktop panel launchers
