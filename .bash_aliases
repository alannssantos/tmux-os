#### Variaveis.
RCor="\[$(tput bold)$(tput setaf 1)\]"	# Red (Vermelho)
GCor="\[$(tput bold)$(tput setaf 2)\]"	# Green (Verde)
YCor="\[$(tput bold)$(tput setaf 3)\]"	# Yellow (Amarelo)
BCor="\[$(tput bold)$(tput setaf 4)\]"	# Blue (Azul)
PCor="\[$(tput bold)$(tput setaf 5)\]"	# Purple (Roxo)
CCor="\[$(tput bold)$(tput setaf 6)\]"	# Cyan (Turquesa)
WCor="\[$(tput bold)$(tput setaf 7)\]"	# White (Branco)
ECor="\[$(tput sgr0)\]"			# End (Fim)

#### Começo da Funções git status.
gitB() { git branch 2>&1 | tee | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' | sed 's/^/ \[/;s/$/\] /' ;}
gitH() { git status 2>&1 | tee | sed '/Your branch is ahead of/!d' | sed 's/.*.//' ;}
gitU() { git status 2>&1 | tee | sed '/\t/!d;/:/d' | sed '$=' | sed '/\t/d;s/^//' ;}
gitD() { git status 2>&1 | tee | sed '/deleted:/!d' | sed '$=' | sed '/\t/d;s/^//' ;}
gitM() { git status 2>&1 | tee | sed '/modified:/!d' | sed '$=' | sed '/\t/d;s/^//' ;}
gitN() { git status 2>&1 | tee | sed '/new file:/!d' | sed '$=' | sed '/\t/d;s/^//' ;}
gitR() { git status 2>&1 | tee | sed '/renamed:/!d' | sed '$=' | sed '/\t/d;s/^//' ;}

export PS1="\\n$RCor[$WCor\A$RCor] $GCor\u$YCor@$BCor\h $GCor\w$ECor\\n$YCor\$(gitB)$CCor\$(gitH)$RCor\$(gitD)$GCor\$(gitN)$CCor\$(gitR)$YCor\$(gitU)$CCor\$(gitM)$ECor $PCor$ $ECor"
export PS2=" $GCor>$ECor "

#### Aliases.
alias trc='stig'
alias bat='bat --theme zenburn -p'
alias yta-mp3='youtube-dl -c --extract-audio --audio-format mp3 -o "%(autonumber)s-%(title)s.%(ext)s" --add-metadata'
alias ytv-best='youtube-dl -c --add-metadata -f bestvideo+bestaudio'
alias streamlink='streamlink -p "mpv --cache 2048 --ontop --no-border --force-window --autofit=500x280 --geometry=-15-60"'

#### Funções.
finder() { ranger --selectfile="$(fzf -e --color=16 --border | xargs -r -0)" ;}
justread() { python3 -m readability.readability -u "$1" > /tmp/readable.html&&w3m /tmp/readable.html ;}
hideinimage() { cat "$@" > "copy_$1" ;}

#### Exports.
set -o vi
export PATH="$PATH:$HOME/.local/bin"
export PATH="$PATH:$HOME/.config/scripts"

#### Man Page Colors.
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

#### Mostrar arquivos ocultos com FZF e abri com o aplcativo padrão pra determinado arquivo.
export FZF_DEFAULT_COMMAND='find /home /media /mnt'

bind '"\C-F":"finder\n"'
bind '"\C-X":"tmux attach || tmux\n"'
bind '"\C-G":"$(fzf -e)\n"'

debfetch
