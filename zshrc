# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export GOPATH=~/Dropbox/projects/go
export GO15VENDOREXPERIMENT=1
export PATH=~/.npm-packages/lib:/opt/local/bin:/usr/local/gcc-4.8.4/bin:$GOPATH/bin:/usr/local/git/bin:/usr/local/smlnj/bin:/usr/local/sbin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/bin/ruby:~/hadoop-2.5.1/bin:~/hadoop-2.5.1/sbin:$PATH

export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export SVN_EDITOR=/usr/bin/vim

alias ao='./a.out'
alias rm='rm -i'
alias node='nocorrect node'
alias jb='jobs'
alias vim='/Applications/MacVim.app/Contents/MacOS/vim'

#to support Chinese
export LC_ALL=en_US.UTF-8  
export LANG=en_US.UTF-8

#Python
export PYTHONPATH=~/dot-files/lib/util:$PYTHONPATH
#hadoop
export JAVA_HOME=`/usr/libexec/java_home -v 1.8`
#export HADOOP_HOME="/usr/local/hadoop-2.5.1/"

alias cpu="top -F -R -o cpu"

alias gotest="$GOPATH/bin/goconvey"

NPM_PACKAGES="${HOME}/.npm-packages"

PATH="$NPM_PACKAGES/bin:$PATH"

# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

[ -s "/Users/wenbin/.scm_breeze/scm_breeze.sh" ] && source "/Users/wenbin/.scm_breeze/scm_breeze.sh"
