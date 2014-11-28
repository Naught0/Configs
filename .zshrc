# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh
export PULSE_LATENCY_MSEC=60

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="eastwood"
#PROMPT='> '

# Grep_error fix
unset GREP_OPTIONS

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

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
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/lib/lightdm/lightdm:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games"
#export PATH="/home/james/.scripts"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="$PATH:/home/james/.scripts"
export PATH="$PATH:/usr/bin/core_perl"

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

# Aliases
alias in="sudo pacman -S"
alias rmv="sudo pacman -R"
alias rmva="sudo pacman -Rcns"
alias up="sudo pacman -Syuu"
alias inst="pacaur -S"
#alias in="sudo apt-get install"
#alias rmv="sudo apt-get remove"
#alias rmva="sudo apt-get autoremove --purge"
#alias up="sudo apt-get update ; sudo apt-get upgrade ; sudo apt-get dist-upgrade"
alias fonts="fc-cache -fv"
alias rm="rm -v"
alias cp="cp -v"
alias mv="mv -v"
alias chat="weechat"
alias git1="git add ."
alias git2="git commit -m"
alias git3="git push origin master"
alias xinit="xinit -- /usr/bin/Xorg.bin -nolisten tcp :0 vt$XDG_VTNR"
export PATH="$HOME/.rbenv/bin:$PATH"
