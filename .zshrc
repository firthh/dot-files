# Path to your oh-my-zsh installation.
export ZSH=/home/hugo.firth/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="hugo"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
#ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(gitfast docker docker-compose gradle lein k)

# User configuration
#export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/hugo.firth/bin"
#export PATH="/home/hugo/.nix-profile/bin:/home/hugo/.nix-profile/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
# source ~/.profile

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#export JAVA_HOME="/usr/lib/jvm/java-1.8.0"
#. /home/hugo/.nix-profile/etc/profile.d/nix.sh

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"
#export PATH="$PATH:/usr/share/elixir/1.0.3/bin/" # Added path for Elixir

# export path for rust binaries
# export PATH="$PATH:/home/hugo.firth/.cargo/bin/"
# export RUST_SRC_PATH=/home/hugo.firth/code/rust/src

# export PATH="$HOME/.rbenv/bin:$PATH"

export PATH="$PATH:$HOME/bin/terraform"

#export GOROOT="$HOME/go"
#export PATH="$GOROOT/bin:$PATH"
export GOPATH="$HOME/gopath"
export PATH="$GOPATH/bin:$GOPATH/src/github.com/uswitch/vaulted/bin:$PATH"

#eval "$(rbenv init -)"

alias b='bundle exec'
alias be='bundle exec'

alias dci='docker rmi $(docker images -q)'
alias dcc='docker rm -f $(docker ps -a -q)'

#export PROMPT='%{$fg[magenta]%}%n%{$reset_color%} at %{$fg[yellow]%}%m%{$reset_color%} $NIX_SHELL>'
alias ns='nix-shell --run "NIX_PROMPT=nix-shell zsh"'

source ~/.uswitch-secrets
