# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH=/home/aiyman/.oh-my-zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="refined"


plugins=(git rails common-aliases npm repo sudo)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# prompt aliases 
alias xrdbl="xrdb -load ~/.Xresources"
alias get="sudo apt-get install"
alias exc="chmod +x"
alias zshx="source ~/.zshrc"
alias i3conf="vim ~/.config/i3/config"
alias termconf="vim ~/.config/termite/config"
alias tmuxconf="vim ~/.tmux.conf"
alias s="sudo"
alias config="/usr/bin/git  --git-dir=$HOME/.cfg --work-tree=$HOME"


# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"


source ~/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

# BUllet Train Customization

BULLETTRAIN_PROMPT_CHAR="~"
BULLETTRAIN_TIME_12HR="true"


# Tell Antigen that you're done.
antigen apply
export DEVKITPRO=/opt/devkitpro
export DEVKITPRO=/opt/devkitpro/devkitARM
lmao
