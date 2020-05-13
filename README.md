# Tmux

# Configuração

#### Crontab `/etc/crontab`.

```
# For details see man 4 crontabs  
  
# Example of job definition:  
# .---------------- minute (0 - 59)  
# | .------------- hour (0 - 23)  
# | | .---------- day of month (1 - 31)  
# | | | .------- month (1 - 12) OR jan,feb,mar,apr ...  
# | | | | .---- day of week (0 - 6) (Sunday=0 or 7) OR sun,mon,tue,wed,thu,fri,sat  
# | | | | |  
# * * * * * user-name command to be executed
*/30  *     *    * *    root    /usr/bin/apt update >/dev/null 2>&1
*/30  */3   */3  * *    alann   /home/alann/.config/scripts/wallpapers.sh >/dev/null 2>&1
*/30  *     *    * *    alann   /usr/local/bin/flexget execute > /tmp/dtest_erro.log 2>&1
```

#### Ativar o Bluetooth.

```
$ sudo systemctl enable bluetooth
$ sudo systemctl restart bluetooth
$ systemctl status bluetooth
```

#### Função Drop-Down.

Lembrar de colocar no atalho de teclado.

`xfce4-terminal --drop-down --hide-menubar --fullscreen --hide-toolbar -e tmux`
