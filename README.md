# dev-machine-playbook

## Pre-requisites

This playbook is designed to run on a Linux Mint 18 installation. It has not been tested with any other distributions.

## Installation

1. Install Git

  ```shell
  apt add-repository ppa:git-core/ppa
  apt update
  apt install git
  ```

1. Install Ansible

  ```shell
  apt add-repository ppa:ansible/ansible
  apt update
  apt install ansible
  ```

1. Clone this repository into your chosen local folder

  ```shell
  git clone https://github.com/andrew-dias/dev-machine-playbook.git
  ```

1. Install Ansible dependencies referring to the cloned `requirements.yml`. Use `--roles-path` until Ansible issue [#16010](https://github.com/ansible/ansible/issues/16010) is addressed.

  ```shell
  sudo ansible-galaxy install -r requirements.yml --roles-path=~/.local/share/ansible/roles
  ```

1. Run the playbook in the cloned repository

  ```shell
  ansible-playbook -K -i hosts playbook.yml
  ```

1. Log out to ensure all changes are activated

