#!/bin/sh

HOST=dbc
SRC=/dbc/sc-dbc1220/faiyaza/src
DST=~/src/wcp

sshfs -o reconnect,IdentityFile=~/.ssh/id_rsa $HOST:$SRC $DST
