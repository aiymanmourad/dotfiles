#=======================================================
#		  Enviorment Variables
#=======================================================

# path 
export PATH=$HOME/bin:w:/usr/local/bin:$PATH

# ssh key path
export SSH_KEY_PATH="~/.ssh/rsa_id"

# arm dev kit location
export DEVKITPRO=/opt/devkitpro:/opt/devkitpro/devkitARM

# language enviorment
export LANG=en_US.UTF-8

# default editor
export EDITOR=nvim



#=======================================================
#		      Aliases
#=======================================================

#general aliases
alias xrdbl="xrdb -load ~/.Xresources" #source Xresources
alias cpy="xclip -o -sel clip >" #xclip copy
alias get="sudo apt-get install" #apt-get 
alias exc="chmod +x" #make excecutable
alias zshx="source ~/.zshrc" #source zsh
alias s="sudo" #sudo
alias vi="nvim" #nvim 
alias @="clear" #clear term
alias config="/usr/bin/git  --git-dir=$HOME/.cfg --work-tree=$HOME" #dotfiles repo

#git aliases 
alias g="git" #git
alias gl="git pull" #git push
alias gp="git push" #git push
alias gm="git merge" #git merge
alias gca="git commit -v -a -m" #git commit all verbose
alias gba="git branch -a" #git list all branches
alias gcp="git cherry-pick" 
alias glg="git log" #git show commit logs
alias ga="git add" #git add 
alias grh="git reset head"
alias gdv="git diff -w "$@" | view -"
alias gdvf="git diff --staged" #git diff
alias gst="git status -s" #git tree status
alias gup="git fetch && git rebase" #git fetch and rebase
alias gco="git checkout" #git checkout
alias grm="git rm --cached" #git remove

#dotfiles config aliases
alias zshc="vi ~/.zshrc" #edit zsh config
alias vic="vi ~/.config/nvim/init.vim" #edit nvim config
alias i3c="vi ~/.config/i3/config" #edit i3 config
alias tc="vi ~/.config/termite/config" #edit termite config
alias tmuxc="vi ~/.tmux.conf" #edit tmux config
alias barc="vi ~/.config/polybar/config" #edit polybar config

#django aliases
alias dj="python manage.py" #djano manage.py
alias djrs="dj runserver" #django run dev server
alias djmm="dj makemigrations" #django make migrations
alias djsu="dj createsuperuser" #django create su
alias djmi="dj migrate" #django migrate db
alias django="source ~/.virtualenvs/djangodev/bin/activate" #django python virtualenv
alias djadmin="django-admin"

#=======================================================
#		      Antigen 
#=======================================================

#source antigen
source ~/antigen.zsh 

# load the oh-my-zsh's library.
antigen use oh-my-zsh

# antigen bundles
antigen bundle git
antigen bundle heroku
antigen bundle pip
antigen bundle lein
antigen bundle command-not-found


#always source at end 
antigen bundle zsh-users/zsh-syntax-highlighting 

# antigen Theme
antigen theme https://github.com/caiogondim/bullet-train-oh-my-zsh-theme bullet-train

antigen apply 

#=======================================================
#		      Prompt 
#=======================================================


# bullet train theme settings 
BULLETTRAIN_PROMPT_CHAR="~"
BULLETTRAIN_TIME_12HR="true"
BULLETTRAIN_CONTEXT_HOSTNAME=""
BULLETTRAIN_PROMPT_ORDER=(
    time
    status
    custom
    dir
    screen
    perl
    ruby
    virtualenv
    nvm
    aws
    go
    elixir
    git
    hg
    cmd_exec_time
)




