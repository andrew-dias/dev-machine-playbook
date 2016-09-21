# dev-machine-playbook

This [Ansible](https://github.com/ansible/ansible) playbook configures my personal development machine.  It is designed to run on a fresh Linux Mint 18 installation, and has not been tested with any other distributions.

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

1. Log out to ensure all changes are activated

