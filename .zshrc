# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/zack/.oh-my-zsh"

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="norm"

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

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
# ENABLE_CORRECTION="true"

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
plugins=(
  archlinux
  asdf
  aws
  colored-man-pages
  common-aliases
  git
  mix
  postgres
  sudo
  tmux
  vi-mode
  vundle
  yarn
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

fpath+=~/.zfunc
export PATH=/usr/local/sbin:$PATH
export PATH=/usr/local/bin/git:$PATH
export PATH=$HOME/.local/bin:$PATH
export PATH=/usr/local/bin:$PATH

export PATH=/usr/local/share/python:$PATH
export PATH=$PATH:/usr/local/opt/go/libexec/bin
export PATH=$PATH:$HOME/go/third/bin
export PATH="$PATH:$(yarn global dir)/node_modules/.bin"

export PATH=/home/zack/.ssi/bin:$PATH


export EXERCISM_CONFIG_FILE=$HOME/.config/exercism/user.json
export CLICOLOR=1

export GPG_TTY=$(tty)

export GOROOT_BOOTSTRAP=$GOROOT
export GOPATH="$HOME/go/mine:$HOME/go/third:$GOPATH"

if [ -e $HOME/.nix-profile/etc/profile.d/nix.sh ]; then . $HOME/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
. $HOME/.asdf/asdf.sh
. $HOME/.asdf/completions/asdf.bash
source $HOME/.cargo/env

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
export SSH_KEY_PATH="~/.ssh/rsa_id"

if [ -f /home/zack/.work-tokens.sh ]; then
   source /home/zack/.work-tokens.sh
fi

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias diff='diff-so-fancy'
alias cat='bat'
alias ping='prettyping --nolegend'
alias du="ncdu --color dark -rr -x --exclude .git --exclude node_modules --exclude .stack-work --exclude elm-stuff"
alias help='tldr'
alias ll='ls -lah'
alias exa='exa -lah'
alias mkdirp='mkdir -pv'
alias stack-default='stack test --fast --haddock-deps --file-watch'
alias ycm-update='pushd ~/.vim/bundle/YouCompleteMe && python install.py --tern-completer && popd'
alias pkgs='yay -Qqe > pkglist.txt'
