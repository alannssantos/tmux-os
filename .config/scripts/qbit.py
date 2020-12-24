#!/usr/bin/env python3

from qbittorrent import Client

qb = Client('http://localhost:7777/')

qb.login()
# not required when 'Bypass from localhost' setting is active.
# defaults to admin:admin.
# to use defaults, just do qb.login()

torrents = qb.torrents()

for torrent in torrents:
    progress = int(torrent['progress'] * 100)
    state = torrent['state']
    print (state, progress)
