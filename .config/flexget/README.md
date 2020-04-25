# Flexget install

#### Requisitos
```
$ sudo -H pip3 install flexget==3.1.50
$ sudo apt install python3-libtorrent
$ pip3 install transmissionrpc
```
#### Crontab `/etc/crontab`.
```
*/30  *     *    * *    alann   /usr/local/bin/flexget execute > /tmp/dtest_erro.log 2>&1
```

#### Editar o arquivo `~/.config/flexget/config.yml`.
```
Definir os destinos dos donwloads e dá permissão de escrita para as pastas.

$ chmod 777 path

Testar se RSS estão validos.

$ flexget --test execute

```
