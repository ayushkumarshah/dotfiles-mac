# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
    export EDITOR='nvim'
else
    export EDITOR='nvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# My scripts
export PATH="/Users/$USER/scripts:$PATH"

# export PATH=/usr/bin/python3:$PATH
export HOMEBREW_BUNDLE_FILE=~/.Brewfile

# JAVA env variable
# export JAVA_HOME="$(/usr/libexec/java_home)"

# Maven environment variable
# export M2_HOME=/usr/local/apache-maven/apache-maven-3.6.3
# export M2=$M2_HOME/bin
# export PATH=$M2:$PATH

# Nvidia visual profiler for mac
# export PATH="/Users/$USER/nvvp/bin:$PATH"

export PATH=/opt/homebrew/bin:$PATH
export PATH=/opt/homebrew/sbin:$PATH

# export GEM_PATH="$HOME/.gem/ruby/2.6.0/bin"
# export PATH="$GEM_PATH:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export PATH=/Library/TeX/texbin:$PATH

export PATH="/opt/homebrew/opt/ruby@2.7/bin:$PATH"

