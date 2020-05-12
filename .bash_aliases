#### Variaveis.

RCor="\[$(tput bold)$(tput setaf 1)\]"	# Red (Vermelho)
GCor="\[$(tput bold)$(tput setaf 2)\]"	# Green (Verde)
YCor="\[$(tput bold)$(tput setaf 3)\]"	# Yellow (Amarelo)
BCor="\[$(tput bold)$(tput setaf 4)\]"	# Blue (Azul)
PCor="\[$(tput bold)$(tput setaf 5)\]"	# Purple (Roxo)
CCor="\[$(tput bold)$(tput setaf 6)\]"	# Cyan (Turquesa)
WCor="\[$(tput bold)$(tput setaf 7)\]"	# White (Branco)
ECor="\[$(tput sgr0)\]"			# End (Fim)

#### Começo da Funções git status. ####

gitB() {
    git branch 2>&1 | tee | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/' | sed 's/^/ \[/;s/$/\] /'
}
gitH() {
    git status 2>&1 | tee | sed '/Your branch is ahead of/!d' | sed 's/.*.//'
}
gitU() {
    git status 2>&1 | tee | sed '/\t/!d;/:/d' | sed '$=' | sed '/\t/d;s/^//'
}
gitD() {
    git status 2>&1 | tee | sed '/deleted:/!d' | sed '$=' | sed '/\t/d;s/^//'
}
gitM() {
    git status 2>&1 | tee | sed '/modified:/!d' | sed '$=' | sed '/\t/d;s/^//'
}
gitN() {
    git status 2>&1 | tee | sed '/new file:/!d' | sed '$=' | sed '/\t/d;s/^//'
}
gitR() {
    git status 2>&1 | tee | sed '/renamed:/!d' | sed '$=' | sed '/\t/d;s/^//'
}

#### Fim da Função git status ####
export PS1="\\n$RCor[$WCor\A$RCor] $GCor\u$YCor@$BCor\h $GCor\w$ECor\\n$YCor\$(gitB)$CCor\$(gitH)$RCor\$(gitD)$GCor\$(gitN)$CCor\$(gitR)$YCor\$(gitU)$CCor\$(gitM)$ECor $PCor$ $ECor"
export PS2=" $GCor>$ECor "

#### Aliases
alias bat='bat --theme zenburn -p'
alias youtubemusic-dl='youtube-dl -c --extract-audio --audio-format mp3 -l --embed-thumbnail --add-metadata'
alias youtube-dl='youtube-dl -c --add-metadata'
alias tfilmes='transmission-remote -a -w /media/Stronger/Plex/Filmes'
alias tseries='transmission-remote -a -w /media/Stronger/Plex/Series'
alias tanimes='transmission-remote -a -w /media/Stronger/Plex/Series/Animes'
alias trc='~/.config/tremc/tremc'

#### Exports
export EDITOR="vim"
export PATH="$PATH:~/.config/scripts"

### Man Page Colors
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

### Mostrar arquivos ocultos com FZF e abri com o aplcativo padrão pra determinado arquivo.

export FZF_DEFAULT_COMMAND='find /home /media'

w3mimg () {
        w3m -o imgdisplay=/usr/lib/w3m/w3mimgdisplay $1
}

selecter() {
rifle "$(fzf -e --border --preview 'bat --style=numbers --color=always {} | head -500' | xargs -r -0)"
}

finder() {
ranger --selectfile="$(fzf -e | xargs -r -0)"
}

fzf-dmenu() {
	Name=$(sed '/^Name=/!d' /usr/share/applications/*.desktop | sed 's/^Name\=//' > /tmp/tmp.Name)
	Exec=$(sed '/^Exec=/!d' /usr/share/applications/*.desktop > /tmp/tmp.Exec)
		selected="$(paste -d '\n' /tmp/tmp.Name /tmp/tmp.Exec | sed 'N;s/\nExec\=/ -- /' | fzf -e | sed 's/^.*-- //' | sed 's/%.//')"
		nohup $selected >/dev/null 2>&1&
}

bind '"\C-F":"finder\n"'
bind '"\C-X":"tmux attach || tmux\n"'
bind '"\C-A":"mounty\n"'

ufetch
