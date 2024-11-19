bindkey -v
export KEYTIMEOUT=1

export ZSH="~/.oh-my-zsh"
plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)
export ZSH="/home/shreya/.oh-my-zsh"
export PATH=$HOME/bin:/usr/local/bin:$ZSH:$PATH
source $ZSH/oh-my-zsh.sh
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme
source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
alias cl='clear'
alias music='spotify &'
alias fili='thunar .'
alias cloni='git clone'
alias pulli='git pull'
alias pushi='git push'
alias getuni='cd /home/shreya/Documents/Stuff/PES/sem5'
alias getproji='cd /home/shreya/Documents/Stuff/Projects-Repos'
alias hi='~/hi.sh'
alias lock='~/swaylock_delayed.zsh'
alias c='clear'
alias n='nvim .'
alias snow='snowmachine snow --particle="*" --stack=pile --speed=25'   
alias luaInit='cd /home/shreya/.config/nvim/lua/user/ && nvim .'
alias wofi='wofi -H 400 -W 600 --show drun --insensitive -I'
alias nvidiausage='watch nvidia-smi'
alias intelusage='sudo intel_gpu_top'
alias shark='cd /home/shreya/display3d/ && cargo run --release -- resources/blahaj.obj -t 0,0,5.5'
alias minecraft='cd /home/shreya/Downloads && prime-run java -jar TLauncher-2.899.jar'
alias neofetch='neofetch --ascii_distro arch'
alias 'rm -rf /'='echo "WOAH WOAH WOAH what are you doinggg"'
alias 'rm -rf /*'='echo "WOAH WOAH WAAOHH what are you doinggg"'
alias 'rm -rf *'='echo "HOLY SHEESHH what are you doinggg"'
alias 'remote'='cd /home/shreya/Documents/Stuff/Projects-Repos/Spotuino/Arduino-Controlled-Spotify/  && python SpotifyController.py &'
alias 'arduino'='cd /home/shreya/Downloads/arduino-ide_2.3.2_Linux_64bit/  && ./arduino-ide > /dev/null 2>&1 &'
alias 'glitch'='rm -rf .config/BraveSoftware/Brave-Browser/Default/GPUCache/'
alias 'usb0'='sudo chmod a+rw /dev/ttyUSB0 '
alias 'usb1'='sudo chmod a+rw /dev/ttyUSB1 '
alias 'battery'='upower -i /org/freedesktop/UPower/devices/battery_BAT0'
alias 'owui'='source /home/shreya/Documents/Stuff/Projects-Repos/open-webui/backend/venv/bin/activate && bash /home/shreya/Documents/Stuff/Projects-Repos/open-webui/backend/start.sh'
alias 'spt-a'='kitty @ launch spt'
alias 'ls'='eza --icons'
alias 'move'='cd /home/shreya/Documents/Stuff/Projects-Repos/terminal_song_player/ && source venv/bin/activate && python term.py'
# Function to adjust screen timeout when Okular is opened
okular() {
    command okular "$@"  # Run Okular with any provided arguments
    # Check if Okular is still running after it's closed
    while pgrep -x "okular" > /dev/null; do
        xset s off  # Disable screen saver
        sleep 1     # Check every second
    done
    xset s on       # Enable screen saver when Okular is closed
}
export EDITOR=/usr/bin/nvim
export VISUAL=$EDITOR
export PATH="~/say-cupcake:$PATH"
export PATH="/home/shreya/tools/flutter/bin:$PATH"
export PATH="/opt/android-sdk/platform-tools:$PATH"
export PATH="/usr/local/:$PATH"

# bun completions
[ -s "/home/shreya/.bun/_bun" ] && source "/home/shreya/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"

SAVEHIST=50000
HISTFILE=~/.zsh_history
export CALCURSE_EDITOR=/usr/bin/nvim
export VISUAL=nvim

# Created by `pipx` on 2023-12-02 13:17:17
export PATH="$PATH:/home/shreya/.local/bin"
CPLUS_INCLUDE_PATH="/opt/cuda/targets/x86_64-linux/include/:$CPLUS_INCLUDE_PATH"
export CPLUS_INCLUDE_PATH
export PATH="$PATH:/home/shreya/.cargo/bin"
typeset -g POWERLEVEL9K_INSTANT_PROMPT=off

export GPG_TTY=$(tty)

# >>> mamba initialize >>>
# !! Contents within this block are managed by 'mamba init' !!
export MAMBA_EXE='/usr/bin/micromamba';
export MAMBA_ROOT_PREFIX='/home/shreya/micromamba';
__mamba_setup="$("$MAMBA_EXE" shell hook --shell zsh --root-prefix "$MAMBA_ROOT_PREFIX" 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__mamba_setup"
else
    alias micromamba="$MAMBA_EXE"  # Fallback on help from mamba activate
fi
unset __mamba_setup
# <<< mamba initialize <<<
#


export CMAKE_Fortran_COMPILER=/usr/bin/gfortran

# opam configuration
[[ ! -r /home/shreya/.opam/opam-init/init.zsh ]] || source /home/shreya/.opam/opam-init/init.zsh  > /dev/null 2> /dev/null

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/shreya/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/shreya/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/shreya/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/shreya/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
#
#



source ~/cup.zsh 
