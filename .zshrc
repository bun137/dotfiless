export GTK_THEME="Adwaita-dark"
# Cupcake
cow_say=("beavis.zen" "blowfish" "bong" "bud-frogs" "bunny" "cheese" "cower" "daemon" "default" "dragon" "dragon-and-cow" "elephant" "elephant-in-snake" "eyes" "flaming-sheep" "ghostbusters" "head-in" "hellokitty" "kiss" "kitty" "koala" "kosh" "luke-koala" "meow" "milk" "moofasa" "moose" "mutilated" "ren" "satanic" "sheep" "skeleton" "small" "sodomized" "stegosaurus" "stimpy" "supermilker" "surgery" "telebears" "three-eyes" "turkey" "turtle" "tux" "udder" "vader" "vader-koala" "www")

# Randomly select a cow
random_cow=${cow_say[$RANDOM % ${#cow_say[@]} ]}

message_array=("Halo you cupcake", "Hiiiiiiiiiiiiiiiii", "What you doing huh -_-", "Cheating cheating", "What you up to\?", "Heyyyyyyyyy", "Oh you\'re on the terminal again", "Did you shower\?", "Ohooo terminal terminal", "Go drink water, ik you didn\'t", "Hiiiiiiii")

# for i in message_array
# do 
#     echo $i
#
# done

# Randomly select a message

random_message=${message_array[$RANDOM % ${#message_array[@]} ]}

# generate the command

command="cowsay -f $random_cow $random_message"

#execute the command

eval $command      

plugins=(git
    zsh-autosuggestions)
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

alias codi='code .'
alias music='spotify &'
alias fili='thunar .'
alias cloni='git clone'
alias pulli='git pull'
alias pushi='git push'
alias getuni='cd /home/shreya/Documents/Stuff/PES/sem4'
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

export PATH="~/say-cupcake:$PATH"
export PATH="/home/shreya/tools/flutter/bin:$PATH"
export PATH="/opt/android-sdk/platform-tools:$PATH"
export PATH="/usr/local/:$PATH"
# Vim mode. Press esc to go to vim mode

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
