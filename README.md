## First, change bash to zsh 
```
chsh -s $(which zsh)
```
## Logout and login, then run setup.sh
```
git clone https://github.com/ayushkumarshah/dotfiles-mac.git
cd dotfiles-mac
chmod +x setup.sh
./setup.sh
```

You will see a list of options:

```
******************
    Setup OS X
******************

Available commands:

      all:  Install everything
     apps:  Install useful apps
     brew:  Install packages & applications from Brewfile
   config:  Link dotfiles
 defaults:  Default settings for mac
      ssh:  Create & copy SSH key
   system:  Install system software like brew and ohmyzsh

        q:  Quit/Exit.
```

Use the command you want. Example, if you want to install everything:
```
./setup.sh all
```

* Set shortcut key for terminal
  1. Open Applications > automator
  2. Quick Action
  3. Launch application
  4. Select iterm
  5. Save and give name (eg Launch iterm)
  6. Open keboard shortcuts > Service
  7. Select the name in step 5 (Launch iterm)
  8. Add shortcut > (Press the keys (Command plus .)
  9. Restart

# Softwares

## General

* Latex 
  * Full - Recommended (Tex maker included in mac)
  
    ```
    brew cask install mactex
    ```
  * Basictex

    ```
    brew cask install basictex
    ```
* [Foxit PDF Reader](https://www.foxitsoftware.com/pdf-reader/)
* Todoist

## Work
* Pycharm
* [Anaconda](https://www.anaconda.com/distribution/#download-section) OR
* [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
  After installation, run this command in terminal
  ```
  conda config --set auto_activate_base False
  ```
* [Zoom](https://zoom.us/download)
* Slack
* [Postman](https://www.getpostman.com/downloads/)
* [VS Code](https://code.visualstudio.com/download)
* [Dbeaver](https://dbeaver.io/download/)
* AWS
  ```
  curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  unzip awscli-bundle.zip
  sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
  ```
* [Gcloud](https://cloud.google.com/sdk/install#installation_options)
  
## Terminal, zsh and ohmyzsh
#### iTerm for MAC
* [iterm2](https://iterm2.com/downloads/stable/latest)
* Add hotkey for iterm 
    * Goto preferences(Command + comma) > Profile > Keys > Hotkey > Create a dedicated hotkkey
* [Solarized Color for iterm2](https://michaelheap.com/solarized-with-iterm2/)

* [Jazz up zsh](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)
* Install ohmyzsh
  ```
  wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  ```
  Change theme in ~/.zshrc to agnoster

* Changing username to display only name  
   Add this at the end of ~/.zshrc
  ```
  prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
  }
  ```
#### oh-my-zsh plugins
* Autojump 

  Mac
  ```
  brew install autojump # Mac
  ```
  
* Auto suggestion
  ```
  git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  ```
* Syntax highlighting
  ```
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```
  Add this to array of plugin ~/.zshrc
  ```
  plugin
  (git
  autojump
  zsh-syntax-highlighting
  zsh-autosuggestions
  )
  ```
  ```
  source ~/.zshrc
  ```

Configure keystore for chrome and nautilus: 
https://www.linuxquestions.org/questions/linux-desktop-74/openbox-autostart-gnome-keyring-daemon-message-4175547333/
