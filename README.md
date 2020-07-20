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

## (Optional) Install iTerm2 terminal (Recommended)

```console
$ brew cask install iterm2
```

## 3. Logout and login, then run setup.sh

Open iTerm2 terminal if you installed, otherwise open default
terminal. cd into the dotfiles-mac directory. Then run

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

## If you want to install complete script

- **all:** It executes all the commands in the order: ``config - ohmyzsh - link - brewapps - apps - ssh``

  ```console
  $ ./setup.sh all
  $ ./setup.sh link
  ```

  **Load Iterm2 configurations:**

    Open Iterm2, goto Preferences > General > Preferences > Tick the both boxes and change username to your own. i.e.
    `/Users/ayushkumarshah to /Users/yourusername`

- Fix username to display your name

  Modify ayush to your name at the end of ~/.config/zsh/ohmyzsh.zsh

  ```console
  prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)ayush"
  fi
  }
  ```

## (If you want to install step by step)

> If you chose the all option and run the above commands, you don't need to run the setup.sh commands given below.

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

  **Load Iterm2 configurations:**

  Open Iterm2, goto Preferences > General > Preferences > Tick the both boxes and change username to your own. i.e.
  `/Users/ayushkumarshah to /Users/yourusername`

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

### Configure iTerm2
#### Set shortcut key for terminal (iTerm2)

![Imgur](https://i.imgur.com/k1qid6x.png)

1. Launch iTerm2
2. Open Preferences by iTerm2->Preferences or Command plus comma(,)
3. Select Profiles Tab
4. Select Default > General tab.
5. Choose a shortcut key

#### Change theme for perfect display with ohmyzsh agnoster theme

[**Solarized Color for iterm2**](https://michaelheap.com/solarized-with-iterm2/)

- Download [Solarized](http://ethanschoonover.com/solarized)
- Unzip it and double click on the colour scheme you want (light or dark)
- Open iTerm2’s preferences.
- Go to colours, load presets and select Solarized. Make sure that the minimum contrast slider is set to low
- Click on text, make sure that “Draw bold text in bright colours” is disabled

#### Add shortcut key for iterm2 hotkey window

- Goto preferences(Command + comma) > Profile > Keys > Hotkey > Create a dedicated hotkkey

### Other Softwares

- [Foxit PDF Reader](https://www.foxitsoftware.com/pdf-reader/)
- Todoist

- Pycharm Community Edition
  
  ```console
  $ brew cask install pycharm-ce
  ```
- [Miniconda](https://docs.conda.io/en/latest/miniconda.html)
  
  ```console
  $ wget -P ~/Downloads 'https://repo.anaconda.com/miniconda/Miniconda3-latest-MacOSX-x86_64.sh'
  $ bash ~/Downloads/Miniconda3*.sh
  ```
- AWS CLI

  ```console
  $ curl "https://s3.amazonaws.com/aws-cli/awscli-bundle.zip" -o "awscli-bundle.zip"
  $ unzip awscli-bundle.zip
  $ sudo ./awscli-bundle/install -i /usr/local/aws -b /usr/local/bin/aws
  ```

- [Gcloud](https://cloud.google.com/sdk/install#installation_options)

- Latex 
  - Full - Recommended (Tex maker included in mac)
  
    ```console
    $ brew cask install mactex
    ```

  - Basictex

    ```console
    $ brew cask install basictex
    ```
