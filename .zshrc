# system aliases
alias p='python3'
alias cls='clear'
alias pip='pip3'
alias rmd='rm -rf'
alias home='cd ~'

# git aliases
alias gs='git status'
alias gaa='git add .'

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
alias runJarvis='p ~/Projects/Jarvis/jarvis.py'

# activate jarvis
alias jarvis='cdenv jarvis && runJarvis'




# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/emibuliga/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/emibuliga/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/emibuliga/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/emibuliga/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

