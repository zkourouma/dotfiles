set -o vi

if [ -f "$(brew --prefix)/etc/bash_completion" ]; then
  . $(brew --prefix)/etc/bash_completion
fi

if [ -f ~/.profile ]; then
   source /Users/zack/.profile
fi

if [ -f ~/.bashrc ]; then
   source /Users/zack/.bashrc
fi

alias ll='ls -laGh'
alias mkdirp='mkdir -pv'
alias diff='colordiff'

alias ..='cd ..'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

alias grep='grep -n --color=auto'
alias egrep='egrep -n --color=auto'


alias gitl='git log --all --decorate --graph --pretty=oneline'
alias gitback='git checkout -'

alias duf='du -sk * | sort -n | perl -ne '\''($s,$f)=split(m{\t});for (qw(K M G)) {if($s<1024) {printf("%.1f",$s);print "$_\t$f"; last};$s=$s/1024}'\'
alias pngkarl='pngcrush -ow -rem allb -brute -reduce -l9'
alias vim-bundles='vim +PluginInstall! +qall'
alias ycm-update='pushd ~/.vim/bundle/YouCompleteMe && python install.py --tern-completer --gocode-completer --racer-completer --clang-completer --system-libclang --system-boost && popd'

alias vim='MIX_ENV=edit vim'
alias vi='MIX_ENV=edit vim'


hprefix() { md5 -s "$1:$(($2 % 100))" | cut -d '=' -f 2 | cut -c 2-5; }

# OPAM configuration
. /Users/zack/.opam/opam-init/init.sh > /dev/null 2> /dev/null || true
