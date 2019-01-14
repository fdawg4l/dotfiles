#!/bin/bash -x

DISK=/dbc/sc-dbc1220/faiyaza

mount -t nfs -o tcp,rw,async,vers=3 sc-dbc1220.eng.vmware.com:$DISK ~/src/dbc
