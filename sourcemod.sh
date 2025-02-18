#!/bin/bash
set -e

cd $HOME/tf

mm_url=$(wget -N -nv -q -O - "https://www.metamodsource.net/downloads.php?branch=stable" | grep -oP -m1 "https://[a-z.]+/mmsdrop/[0-9.]+/mmsource-(.*)-linux.tar.gz")
sm_url=$(wget -N -nv -q -O - "http://www.sourcemod.net/downloads.php?branch=stable" | grep -oP -m1 "https://[a-z.]+/smdrop/[0-9.]+/sourcemod-(.*)-linux.tar.gz")

wget -N -nv $mm_url
wget -N -nv $sm_url

tar -xzf mmsource-*-linux.tar.gz
tar -xzf sourcemod-*-linux.tar.gz

rm *.tar.gz

# prevent automatic map switch
rm addons/sourcemod/plugins/{nextmap.smx,funcommands.smx,funvotes.smx}
