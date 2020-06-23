export ZSH=~/.oh-my-zsh

##################
# ZPLUG LOAD
##################
source ~/.zplug/init.zsh

##################
# ZPLUG START
##################
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-autosuggestions"
#zplug "zsh-users/zsh-history-substring-search"
zplug "robbyrussell/oh-my-zsh", use:"lib/*.zsh"
zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh, if:"[[ $OSTYPE == *darwin* ]]"
zplug "plugins/zsh_reload", from:oh-my-zsh
zplug "plugins/colorize", from:oh-my-zsh
zplug "plugins/docker", from:oh-my-zsh
zplug "wting/autojump", \
      use:"bin/autojump.zsh"

##################
# ZPLUG THEME
##################
zplug mafredri/zsh-async, from:github
zplug sindresorhus/pure, use:pure.zsh, from:github, as:theme


##################
# ZPLUG INTALL_LOAD
##################
zplug check || zplug install
zplug load


##################
# SETTING - ALIAS
##################
export LANGUAGE=ko_KR.UTF-8
export LANG=ko_KR.UTF-8
alias zshconfig="vim ~/.zshrc"

##################
# SETTING - GIT
##################
alias gpl="git pull"
alias grh="git reset --hard HEAD"
alias grs="git reset --soft HEAD"
alias gp="git push -u"
[ -s $HOME/.scm_breeze/scm_breeze.sh ] && source $HOME/.scm_breeze/scm_breeze.sh
