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

alias pipfr='pip list --format=freeze'
alias pipfrreq='pipfr > requirements.txt'
alias pipuninstall='pipfr | xargs pip uninstall -y'

alias desktop='cd ~/Desktop'

alias 4chan='cdenv 4chan && /Users/emibuliga/Projects/Python/4chan_emulator/start_4chan_emulator.sh'

alias raspberryemi='ssh emi@raspberrypi.local'

alias number_files='p ~/Projects/Python/utils/number_files.py'

downloadsong() {
    cdenv yt_to_mp3
    cd ~/Projects/Python/YT_to_MP3
    
    URL=$(pbpaste)  # Use `xclip -o` on Linux instead of `pbpaste`

    if [[ ! "$URL" =~ ^https://www.youtube.com/watch? ]]; then
        echo -e "\033[0;31mMake sure you have copied the YOUTUBE link\033[0m"  # Red error message
        return 1
    fi

    # Check for optional album argument
    ALBUM=""
    
    # If custom album is provided as an argument
    if [[ ! -z "$1" ]]; then
        ALBUM="$1"
    fi
    
    # Run the Python script with album if provided
    if [[ ! -z "$ALBUM" ]]; then
        p yt_to_mp3.py "$URL" --album "$ALBUM"
    else
        p yt_to_mp3.py "$URL"
    fi

    envout
}


alias buildanddeploy='npm run build && firebase deploy'

mary_fany_server='ubuntu@54.243.102.132'
mary_fany_server_key='~/Vital/Keys/mary_fany_app_instance_keypair.pem'
alias sshawslinux='ssh -i $mary_fany_server_key $mary_fany_server'
alias scpawslinux='scp -i $mary_fany_server_key'
alias awsecrlogin='aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 033328896097.dkr.ecr.us-east-1.amazonaws.com/mary_fany_app_ecr_repo'


# factorio world sync
alias factoriosync='cd "/Users/emibuliga/Library/Application Support/factorio/saves" && git add -A && git commit -m "new world update" && git push'
# make Rust run with high FPS
alias rust_high_fps='cd "$TMPDIR/../C/" && rm -rf com.Facepunch-Studios-LTD.Rust/'
# minecraft world sync
alias minecraftsync='cd "/Users/emibuliga/Library/Application Support/minecraft/saves" && git add -A && git commit -m "new world update" && git push'
alias minecraftmusic='cdenv minecraft_music && cd "/Users/emibuliga/Projects/Python/minecraft_automatic_music" && p main.py'
alias minecraftrestore='cd "/Users/emibuliga/Library/Application Support/minecraft/saves" && git restore .'

# cloc <directory/file>
function cloc {
    readonly file=${1:?"Filename must be specified."}

    # lsof -i tcp:"$port" | grep LISTEN | awk '{print $2}'
    cd ~/Projects/\$cloc-1.72 && (perl cloc $file) && cd -
}

#docker mary_fany
alias devup='docker-compose -f docker-compose.yml -p dev up -d'
alias devdown='docker-compose -f docker-compose.yml -p dev down'
alias devmigrate='docker-compose -f docker-compose.yml -p dev exec web python manage.py migrate --noinput'
alias devmanage='docker-compose -f docker-compose.yml -p dev exec web python manage.py'
alias devlogs='docker logs -f dev-web-1'

# git aliases
alias gs='git status'
alias gaa='git add .'
alias gbr='git branch'
alias gitundolast='git reset --soft HEAD~1'
alias gch='git checkout'
alias smc='cd "/Users/emibuliga/Library/Application Support/minecraft/saves/Elysium" && git add -A && git commit -m "update" && git push'


# autocomplete, ignore case
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|=*' 'l:|=* r:|=*'
autoload -Uz compinit && compinit


# conda aliases
alias mkenv='conda create --name'
alias lsenv='conda env list'
alias rmenv='conda env remove --name'
alias cdenv='conda activate'
alias envout='conda deactivate'

# rename ELBs
alias originals='open /Users/emibuliga/Projects/Python/MF_extragere_redenumire/extragere_si_redenumire/FILES\ \&\ DATA/ORIGINALS'
alias elbrename='cdenv MF_extragere_redenumire && ulimit -n 4096 && p /Users/emibuliga/Projects/Python/MF_extragere_redenumire/extragere_si_redenumire/main.py && open /Users/emibuliga/Projects/Python/MF_extragere_redenumire/extragere_si_redenumire/FILES\ \&\ DATA/REDENUMITE'


# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/emibuliga/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/emibuliga/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/emibuliga/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/emibuliga/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
