# ZSH config
[ -f $HOME/.config/zsh/exports.zsh ] && source $HOME/.config/zsh/exports.zsh
[ -f $HOME/.config/zsh/aliases.zsh ] && source $HOME/.config/zsh/aliases.zsh
[ -f $HOME/.config/zsh/conda.zsh ] && source $HOME/.config/zsh/conda.zsh
[ -f $HOME/.config/zsh/ohmyzsh.zsh ] && source $HOME/.config/zsh/ohmyzsh.zsh
[ -f $HOME/.config/zsh/google_cloud.zsh ] && source $HOME/.config/zsh/google_cloud.zsh

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

export NVM_DIR="/Users/$USER/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh" # This loads nvm

# set -o vi
source ~/.config/.shortcuts

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/ayushkumarshah/.lmstudio/bin"
