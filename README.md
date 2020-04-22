# Instructions for setting up your mac

## 1. First, clone this repo

```console
$ git clone https://github.com/ayushkumarshah/dotfiles-mac.git
$ cd dotfiles-mac
```

## 2. Install homebrew installer and zsh

Run the following command to install homebrew installer and zsh

```console
$ chmod +x setup.sh
$ ./setup.sh homebrew
```

Change default from bash to zsh

```console
$ chsh -s $(which zsh)
```

## 3. Logout and login, then run setup.sh

Make sure you are inside the dotfiles-mac directory. Then run

```console
$ ./setup.sh
```

You will see a list of options:

```
------------------
    Setup OS X
------------------

Available commands:

      all:  Complete setup of mac
     apps:  Install useful apps
 brewapps:  Install packages & applications from Brewfile
   config:  Default settings for mac
     link:  Link dotfiles to home
 homebrew:  Install homebrew installer
  ohmyzsh:  Install ohmyzsh
      ssh:  Create & copy SSH key

        q:  Quit/Exit.

./setup.sh:read:82: -p: no coprocess
```

Let me explain these commands so that you can execute the one you want. There are separate scripts for each option
inside the scripts folder and setup.sh which
you can view and edit according to your need.

- **all:** It executes all the commands in the order: ``config - ohmyzsh - link - brewapps - apps - ssh``

  ```console
  $ ./setup.sh all
  $ ./setup.sh link
  ```

> If you run this command, you don't need to run the commands below.

- **config:** It changes different settings of mac for easy usage like use list view in all Finder windows by default,
  Trackpad: enable tap to click, etc. You can view the complete configurations in `scripts/config.sh` and edit it as you
  like or comment unwanted settings.

  ```console
  $ ./setup.sh config
  ```

- **ohmyzsh:** Install ohmyzsh which makes your zsh terminal more powerful and enables features like autocompletion, syntax
  highlighting, displaying github branches, etc. 

  ```console
  $ ./setup.sh ohmyzsh
  ```

- **link** Link all the necessary dotfiles (configurations) to your home directory. Make sure you perform this as it is
    necessary for other apps as well.

  ```console
  $ ./setup.sh link
  ```

- **brewapps:** Install some basic useful apps like `Iterm2 terminal, VSCode, VLC, Spotify, Slack, etc` from the file .Brewfile. You can open
  anedit the .Brewfile so that only the apps you require are installed. You may add more apps or remove the apps present
  in the file. While adding apps in the Brewfile, you should know whether the app is found in brew or cask. You can use
  Brewfile to track the apps installed in your system and may update this file automatically so that you can reuse this
  fila later. For more information on
  how to use Brewfile, visit this [repository](https://github.com/Homebrew/homebrew-bundle)

  ```console
  $ ./setup.sh brewapps
  $ ./setup.sh link
  ```

  After this step, use Iterm2 terminal instead of the normal terminal.

- **apps:** Install apps which are not present in the default brew or cask packages. You can view and edit the file
  `scripts/app.sh` as per your need.

  ```console
  $ ./setup.sh apps
  ```

- **homebrew:** It installs the default homebrew installer along with git and zsh. You don't need to install this as you
  have already done at the beginning.

  ```console
  $ ./setup.sh homebrew
  ```

- **ssh:** It creates a SSH key for your gihub and copies it in the clipboard ready to paste in the github account.

  ```console
  $ ./setup.sh ssh
  ```

## 4. Other useful tips and tricks:

### Set shortcut key for terminal

  1. Open Applications > automator
  2. Quick Action
  3. Launch application
  4. Select iterm
  5. Save and give name (eg Launch iterm)
  6. Open keboard shortcuts > Service
  7. Select the name in step 5 (Launch iterm)
  8. Add shortcut > (Press the keys (Command plus .)
  9. Restart

### Other Softwares

- Latex 
  - Full - Recommended (Tex maker included in mac)
  
    ```console
    $ brew cask install mactex
    ```

  - Basictex

    ```console
    $ brew cask install basictex
    ```

- [Foxit PDF Reader](https://www.foxitsoftware.com/pdf-reader/)
- Todoist

- Pycharm
- [Anaconda](https://www.anaconda.com/distribution/#download-section) OR
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
  After installation, run this command in terminal

  ```console
  $ conda config --set auto_activate_base False
  ```

- [Zoom](https://zoom.us/download)
- Slack
- [Postman](https://www.getpostman.com/downloads/)
- [VS Code](https://code.visualstudio.com/download)
- [Dbeaver](https://dbeaver.io/download/)
- AWS

  ```console
  $ curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  $ unzip awscli-bundle.zip
  $ sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
  ```

- [Gcloud](https://cloud.google.com/sdk/install#installation_options)

### Terminal, zsh and ohmyzsh

#### iTerm for MAC

- [iterm2](https://iterm2.com/downloads/stable/latest)
- Add hotkey for iterm 
    - Goto preferences(Command + comma) > Profile > Keys > Hotkey > Create a dedicated hotkkey
- [Solarized Color for iterm2](https://michaelheap.com/solarized-with-iterm2/)

- [Jazz up zsh](https://www.freecodecamp.org/news/jazz-up-your-zsh-terminal-in-seven-steps-a-visual-guide-e81a8fd59a38/)
- Install ohmyzsh

  ```console
  $ wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh
  ```

  Change theme in ~/.zshrc to agnoster

- Changing username to display only name  
   Add this at the end of ~/.zshrc

  ```console
  prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
  }
  ```

#### oh-my-zsh plugins

- Autojump 

  ```console
  $ brew install autojump # Mac
  ```
  
- Auto suggestion

  ```console
  $ git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
  ```

- Syntax highlighting

  ```console
  $ git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
  ```

  Add this to array of plugin ~/.zshrc

  ```console
  plugin
  (git
  autojump
  zsh-syntax-highlighting
  zsh-autosuggestions
  )
  ```

  ```console
  $ source ~/.zshrc
  ```
