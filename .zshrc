# system aliases
alias p='python3'
alias cls='clear'
alias pip='pip3'
alias rmd='rm -rf'
alias home='cd ~'
alias zshrc='open ~/.zshrc'
alias szshrc='source ~/.zshrc'
alias sleepmusic='cd ~/Projects/Python && p sleep.py'

alias refreshfinder='killall Finder /System/Library/CoreServices/Finder.app'
alias showall='defaults write com.apple.finder AppleShowAllFiles YES && refreshfinder'
alias dontshowall='defaults write com.apple.finder AppleShowAllFiles NO && refreshfinder'


# git aliases
alias gs='git status'
alias gaa='git add .'
alias gbr='git branch'
alias gitundolast='git reset --soft HEAD~1'
alias gch='git checkout'


# autocomplete, ignore case
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


# conda aliases
alias mkenv='conda create --name'
alias lsenv='conda env list'
alias rmenv='conda env remove --name'
alias cdenv='conda activate'
alias envout='conda deactivate'


# chatGPT api app
alias runJarvis='p ~/Projects/Jarvis/src/jarvis.py'

# activate jarvis
alias jarvis='cdenv jarvis && runJarvis'



# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

