#!/bin/sh

HOST=dbc
SRC=/dbc/sc-dbc1220/faiyaza/src
DST=~/src/wcp
uid=1071474516
gid=201

sshfs -o Compression=no \
	 -o Ciphers=aes128-ctr \
         -o reconnect \
	 -o IdentityFile=~/.ssh/id_rsa,auto_cache \
	 -o reconnect \
	 -o cache_timeout=115200 \
	 -o attr_timeout=115200   \
         -o entry_timeout=1200 \
         -o max_readahead=90000 \
	 -o large_read \
	 -o big_writes  \
         -o no_remote_lock \
	 -o auto_unmount \
	 -o uid=$uid \
	 -o gid=$gid \
	 $HOST:$SRC $DST
