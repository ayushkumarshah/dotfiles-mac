# Common commands

## General shell commands

```console
pwd   # get current path
cd -  # go back to previous location
cat filename  # show the contents of the file filename
du -sh .
du -sh *
du -sh . | tail -1
stat chmod
htop
tree
```

## SSH

### SSH Tunelling

```console
ssh -NL 8888:localhost:8888 username@ip
```

### Other ssh commands

**Generate ssh key:**

```console
ssh-keygen -t rsa
```

**Save ssh password so that no need to re-enter everytime**

```console
 ssh-copy-id extract@10.0.2.29
~/.ssh/config : save host info
```

## tmux

```console
tmux
tmux new -s name
tmux ls
tmux attach -t name
<prefix>=Ctrl+B (default), can be changed to Ctrl+A
<prefix> % "  (Splitting panes)
Ctrl+D (exit)
<prefix> D (get out )
<prefix> c: Create a new window (appears in status bar)
<prefix> 0: Switch to window 0
<prefix> 1: Switch to window 1
<prefix> x: Kill current window
<prefix> d: Detach tmux (exit back to normal terminal)
<prefix> z, the active pane is toggled between zoomed and unzoomed

<prefix> <c-S>: save current state
<prefix> <c-R>: reload saved state

```

## Vim

```console
d starts the delete operation.
dw will delete a word.

p paste text after the current line.
P paste text on the current line.

y yank text into the copy buffer.
d -> delete
<C-x> cut

"+p paste from system
"+y copy into system
: % y + copy all into system

v highlight one character at a time.
V highlight one line at a time.
Ctrl-v highlight by columns.

u -> undo
Ctrl-r will redo the last undo.

/text search for text
:%s/text/replacement text/g search through the entire document for text and replace it with replacement text.
:%s/text/replacement text/gc search through the entire document and confirm before replacing text.

0 moves the cursor to the beginning of the line.
$ moves the cursor to the end of the line.
G move to the end of the file.
gg move to the beginning of the file.
`. move to the last edit.

:q
:q!
:wq
```

### nvim plugin commands

```vim
:bd -> remove buffer
:CtrlP -> find file
<C-e> -> Sidebar
<C-o> -> Toggle between buffers
space+d -> goto definitions
space+g -> goto ASSIGNMENTS

" Git
:Git diff
:Gdiffsplit
:GBrowse
:GV

:vsplit

" coc-python
gd > Goto Definitions
gr > Goto References
<C-o> - Go back

Shift K > doc hint
:Format > autopep8 formatting

<C-w>w -> Switch cursors between sidebar and code
<C-n><C-n><C-n> -> multiple cursors:
    c -> change
    I -> Insert at first
    A -> Insert at end

:FZF
:Rg > Find word inside file
:BLines > Find all occurences of word in a giant file
:Lines > Same as above but search in all buffers
:History: > HOstory of commands ran in vim
:Ag > similar to Rg but
:Buffers > Search through buffers
> - Tab
gf > Goto file: open file directly from path written in vim

" Coc
:CocInstall coc-python
:CocUninstall
:CocList extensions , Tab
:CocCommand

" Coc Explorer
o - expand/collapse

Startify
:SSave
:SLoad

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>

" Alternate way to save
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" vim commentary
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>
```

**Open server in nautilus / file explorer**

```markdown
File explorer: Other locations > Connect to server > sftp://username@ip/
```

## i3 wm

- pavucontrol
- alsamixer

```console
mod + r - resize mode , then arrow keys or vim keys
mod + Shift + e - exit
mod + d - dmenu
mod+Shift+c reload
mod+Shift+r restart
```

Alt+Shift- Change keyboard language

## Git

```console
git commit --amend -> add to previous commits
git push origin -f branchname -> forced push
git rebase master -> merge changes of master onto the current branch (first pull from master before rebase)
git log
git diff
git remote -v -> show repo information
git reset --hard <SOME-COMMIT> eg git reset --hard HEAD@1
git show
git config --global user.name
git config --global user.email
git reset <file> -> remove file from the current index (the "about to be committed" list) without changing anything else.
git checkout filename -> Undo local changes to latest commit
```

### Ignore files that have already been committed to the repo

```console
$ git rm -r --cached .
$ git add .
$ git commit -m "Clean up ignored files"
```

### Hard delete unpublished commits

```console
git reset --hard commit_id (reset to the particular commit. It will destroy any local modifications.)
```

### Alternatively, if there's work to keep

```console
git stash
git reset --hard commit_id
git stash pop
```

> This saves the modifications, then reapplies that patch after resetting. You could get merge conflicts, if you've modified things which were changed since the commit you reset to.

### Undo published commits with new commits

> This will create three separate revert commits:

```console
git revert a867b4af 25eee4ca 0766c053
```

> It also takes ranges. This will revert the last two commits:

```console
git revert HEAD~2..HEAD
```

> Similarly, you can revert a range of commits using commit hashes:

```console
git revert a867b4af..0766c053
```

> Reverting a merge commit

```console
git revert -m 1 <merge_commit_sha>
```

> To get just one, you could use `rebase -i` to squash them afterwards Or, you
> could do it manually (be sure to do this at top level of the repo)
> get your index and work tree into the desired state, without changing HEAD:

```console
git checkout 0d1d7fc32 .
```

> Then commit. Be sure and write a good message describing what you just did

```console
git commit
```

### Git reset

git reset does know five "modes": soft, mixed, hard, merge and keep. I will start with the first three, since these are the modes you'll usually encounter. After that you'll find a nice little a bonus, so stay tuned.

- soft

    When using

    ```console
    git reset --soft HEAD~1
    ```

     you will remove the last commit from the current branch, but the file changes
    will stay in your working tree. Also the changes will stay on your index, so following with a git commit will create a commit with the exact same changes as the commit you "removed" before.

- mixed

    This is the default mode and quite similar to soft. When "removing" a commit
    with

    ```console
    git reset HEAD~1
    ```

     you will still keep the changes in your working tree but not on the index; so if you want to "redo" the commit, you will have to add the changes (git add) before commiting.

- hard

    When using

    ```console
    git reset --hard HEAD~1
    ```

    you will lose all uncommited changes in addition to the changes introduced in the last commit. The changes won't stay in your working tree so doing a git status command will tell you that you don't have any changes in your repository.

    > Tread carefully with this one. If you accidentally remove uncommited changes which were never tracked by git (speak: committed or at least added to the index), you have no way of getting them back using git.

- Bonus (keep)

    ```console
    git reset --keep HEAD~1
    ```

    is an interesting and useful one. It only resets the files which are different between the current HEAD and the given commit. It aborts the reset if anyone of these files has uncommited changes. It's basically acts as a safer version of hard.

    > This mode is particularly useful when you have a bunch of changes and want to switch to a different branch without losing these changes - for example when you started to work on the wrong branch.

### Other git commands

```console
git rm -> rm plus git add combined
git rm --cached -> file removed from the index (staging it for deletion on the next commit), but keep your  copy in the local file system.
```

## Brew bundle (Mac)

### Requirements

[Homebrew](https://github.com/Homebrew/brew) (on macOS or [Linux](https://docs.brew.sh/Homebrew-on-Linux)) for installing dependencies.

[Homebrew Cask](https://github.com/Homebrew/homebrew-cask) is optional and used for installing Mac applications.

[mas-cli](https://github.com/mas-cli/mas) is optional and used for installing Mac App Store applications.

[whalebrew](https://github.com/whalebrew/whalebrew) is optional and used for installing Whalebrew images.

## Installation

`brew bundle` is automatically installed when first run.

## Usage

Create a `Brewfile` in the root of your project with:

```bash
touch Brewfile
```

Add your dependencies in your `Brewfile`:

```ruby
tap "homebrew/cask"
tap "user/tap-repo", "https://user@bitbucket.org/user/homebrew-tap-repo.git"
cask_args appdir: "/Applications"

brew "imagemagick"
brew "denji/nginx/nginx-full", args: ["with-rmtp-module"]
brew "mysql@5.6", restart_service: true, link: true, conflicts_with: ["mysql"]

cask "firefox", args: { appdir: "~/my-apps/Applications" }
cask "google-chrome"
cask "java" unless system "/usr/libexec/java_home --failfast"

mas "1Password", id: 443987910

whalebrew "whalebrew/wget"
```

`cask` and `mas` entries are automatically skipped on Linux.
Other entries can be run only on (or not on) Linux with `if OS.mac?` or `if OS.linux?`.

### Install

You can then easily install all dependencies with:

```bash
brew bundle
```

Any previously-installed dependencies which have upgrades available will be upgraded.

`brew bundle` will look for a `Brewfile` in the current directory. Use `--file` to specify a path to a different `Brewfile`, or set the `HOMEBREW_BUNDLE_FILE` environment variable; `--file` takes precedence if both are provided.

My `.Brewfile` is stored in the home directory and the `HOMEBREW_BUNDLE_FILE` environment variable is set to `~/.Brewfile`

You can skip the installation of dependencies by adding space-separated values to one or more of the following environment variables:

- `HOMEBREW_BUNDLE_BREW_SKIP`
- `HOMEBREW_BUNDLE_CASK_SKIP`
- `HOMEBREW_BUNDLE_MAS_SKIP`
- `HOMEBREW_BUNDLE_WHALEBREW_SKIP`
- `HOMEBREW_BUNDLE_TAP_SKIP`

`brew bundle` will output a `Brewfile.lock.json` in the same directory as the `Brewfile` if all dependencies are installed successfully. This contains dependency and system status information which can be useful in debugging `brew bundle` failures and replicating a "last known good build" state.

You can opt-out of this behaviour by setting the `HOMEBREW_BUNDLE_NO_LOCK` environment variable or passing the `--no-lock` option.

You may wish to check this file into the same version control system as your `Brewfile` (or ensure your version control system ignores it if you'd prefer to rely on debugging information from a local machine).

### Dump

You can create a `Brewfile` from all the existing Homebrew packages you have installed with:

```bash
brew bundle dump
```

The `--force` option will allow an existing `Brewfile` to be overwritten as well.
The `--describe` option will output a description comment above each line.
The `--no-restart` option will prevent `restart_service` from being added to `brew` lines with running services.

### Cleanup

You can also use a `Brewfile` to list the only packages that should be installed, removing any package not present or dependent. This workflow is useful for maintainers or testers who regularly install lots of formulae. To uninstall all Homebrew formulae not listed in the `Brewfile`:

```bash
brew bundle cleanup
```

Unless the `--force` option is passed, formulae that would be uninstalled will be listed rather than actually be uninstalled.

### Check

You can check there's anything to install/upgrade in the `Brewfile` by running:

```bash
brew bundle check
```

This provides a successful exit code if everything is up-to-date, making it useful for scripting.

For a list of dependencies that are missing, pass `--verbose`. This will also check _all_ dependencies by not exiting on the first missing dependency category.

### List

Outputs a list of all of the entries in the Brewfile.

```bash
brew bundle list
```

Pass one of `--casks`, `--taps`, `--mas`, `--whalebrew` or `--brews` to limit output to that type. Defaults to `--brews`. Pass `--all` to see everything.

Note that the _type_ of the package is **not** included in this output.

### Exec

Runs an external command within Homebrew's superenv build environment.

```bash
brew bundle exec -- bundle install
```

This sanitized build environment ignores unrequested dependencies, which makes sure that things you didn't specify in your `Brewfile` won't get picked up by commands like `bundle install`, `npm install`, etc. It will also add compiler flags which will help find keg-only dependencies like `openssl`, `icu4c`, etc.

### Restarting services

You can choose whether `brew bundle` restarts a service every time it's run, or
only when the formula is installed or upgraded in your `Brewfile`:

```ruby
# Always restart myservice
brew 'myservice', restart_service: true

# Only restart when installing or upgrading myservice
brew 'myservice', restart_service: :changed
```

## Note

Homebrew does not support installing specific versions of a library, only the most recent one, so there is no good mechanism for storing installed versions in a `.lock` file.

If your software needs specific versions then perhaps you'll want to look at using [Vagrant](https://vagrantup.com/) to better match your development and production environments.

## Tests

Tests can be run with `bundle install && bundle exec rspec`.

## Copyright

Copyright (c) Homebrew maintainers and Andrew Nesbitt. See [LICENSE](https://github.com/Homebrew/homebrew-bundle/blob/master/LICENSE) for details.

