# dev-machine-playbook

This [Ansible](https://github.com/ansible/ansible) playbook configures my [Pop_OS!](https://system76.com/pop) 18.10 development machine, including applications, OS configuration, and dotfiles.

## Contents

* [Zsh](http://zsh.sourceforge.net) with configuration, plugins and colour settings
* [Node Version Manager](https://github.com/creationix/nvm) and NodeJS
* [SDKMAN!](https://sdkman.io)
* [Neovim](https://neovim.io) with configuration and plugins
* [tmux](https://github.com/tmux/tmux) with configuration
* [jq](https://stedolan.github.io/jq)
* Fonts
* Personal helper scripts, installed to `~/bin`
* Various dotfiles (git, editorconfig)
* [Jetbrains Toolbox](https://www.jetbrains.com/toolbox)
* [Visual Studio Code](https://code.visualstudio.com)
* [Gitkraken](https://www.gitkraken.com)
* Google Chrome
* Generate SSH keypair

## Installation

1. Install [Galaxy](https://galaxy.ansible.com) roles

  ```shell
  ansible-galaxy install -r requirements.yml
  ```

1. Run the playbook

  ```shell
  ansible-playbook playbook.yml -i hosts -K
  ```
1. Log out to ensure all changes are activated

1. Open a terminal and choose your colour theme by typing `base16` followed by a tab to perform tab completion.

## TODO

* [Docker](https://galaxy.ansible.com/geerlingguy/docker)
* Mattermost (mattermost-desktop)
* Java?
* 
