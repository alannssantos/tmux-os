#!/usr/bin/env bash

#     _    _
#    / \  | | __ _ _ __  _ __      Alann Santos
#   / _ \ | |/ _` | '_ \| '_ \     https://gitlab.com/alannssantos
#  / ___ \| | (_| | | | | | | |
# /_/   \_\_|\__,_|_| |_|_| |_|

#### Configuração de Resolução e FPS.
# xrandr --output DVI-I-1 --mode 1920x1080 --rate 144.00 &

#### Configurar touchpad para sensibilidade no toque.
# xinput set-prop 'SynPS/2 Synaptics TouchPad' 'libinput Tapping Enabled' 1 &

#### Compositor para trazer transparencia a algumas janelas.
# compton &

#### Selecionando um papel de parede com feh da pasta Backgrounds do sistema.
# while :; do
#	feh --bg-fill --randomize ~/.config/Wallpapers/* \
#	&& sleep 120
# done &

#### Temperatura da tela
# redshift -l -6.265936:-35.210228 &

#### Iniciar Qbittorrent
# qbittorrent &

#### Calibre Server
# calibre-server --url-prefix "/home/alann/Biblioteca do calibre/KCC/" --port 57770 &
