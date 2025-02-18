#!/bin/bash
set -e

cd $HOME/tf

# SteamWorks
wget -N -nv "https://github.com/KyleSanderson/SteamWorks/releases/download/1.2.3c/package-lin.tgz" -O "steamworks.tar.gz"
tar -xf steamworks.tar.gz --strip-components 1
rm steamworks.tar.gz

# SOAP-DM
wget -N -nv "https://github.com/sapphonie/SOAP-TF2DM/archive/master.zip" -O "soap-dm.zip"
unzip -o- -qq soap-dm.zip
cp -r SOAP-TF2DM-master/* ./
rm -r SOAP-TF2DM-master
rm soap-dm.zip

# Improved-Match-Timer
wget -N -nv "https://github.com/b4nnyBot/Progressive-Ruleset-Timer-Plugins/archive/master.zip" -O "improved-match-timer.zip"
unzip -o -qq improved-match-timer.zip
cp -r Progressive-Ruleset-Timer-Plugins-main/* ./
rm -r Progressive-Ruleset-Timer-Plugins-main
rm improved-match-timer.zip

# Socket

cp /socket_3.0.1.zip socket.zip
unzip -o -qq socket.zip
rm socket.zip

# tf2-comp-fixes

wget -N -nv https://github.com/ldesgoui/tf2-comp-fixes/releases/download/v1.16.13/tf2-comp-fixes.zip
unzip -o -qq tf2-comp-fixes.zip
rm tf2-comp-fixes.zip

# srctvplus
cd $HOME/tf/addons

wget -N -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.vdf
wget -N -nv https://github.com/dalegaard/srctvplus/releases/download/v3.0/srctvplus.so

# Curl
cd $HOME/tf/addons/sourcemod

wget -N -nv "https://github.com/sapphonie/SM-neocurl-ext/releases/download/v2.0.0-beta/sm-neocurl.zip"
unzip -o -qq sm-neocurl.zip
rm sm-neocurl.zip

# Websockets

wget -N -nv "https://github.com/peace-maker/sm-websocket/archive/master.zip" -O "sm-websocket.zip"
unzip -o -qq sm-websocket.zip
cp -r sm-websocket-master/* ./
rm -r sm-websocket-master
rm sm-websocket.zip

# Medic stats, SupStats, LogsTF, RecordSTV, WaitForStv, AFK, RestoreScore, FixStvSlot and Updater
cd $HOME/tf/addons/sourcemod/plugins

wget -N -nv  --header="Accept: text/html" --user-agent="Mozilla/5.0 (Macintosh; Intel Mac OS X 10.8; rv:21.0) Gecko/20100101 Firefox/21.0" "http://sourcemod.krus.dk/f2-sourcemod-plugins.zip"
unzip -o -qq f2-sourcemod-plugins.zip
rm f2-sourcemod-plugins.zip

# WebRCON
wget -N -nv https://github.com/spiretf/webrcon/raw/master/plugin/webrcon.smx

# whitelist.tf downloader
wget -N -nv https://github.com/spiretf/sm_whitelist/raw/master/plugin/whitelisttf.smx

# map downloader
wget -N -nv https://github.com/spiretf/mapdownloader/raw/master/plugin/mapdownloader.smx

# demos.tf uploader
wget -N -nv https://github.com/demostf/plugin/raw/ba1b642b92585af142a885af7159fa652916c6e7/demostf.smx

# autoexec
wget -N -nv https://github.com/spiretf/autoexec/raw/master/plugin/autoexec.smx

## Pause
wget -N -nv https://github.com/spiretf/docker-comp-server/raw/master/pause.smx

## NoCheats
wget -N -nv https://github.com/spiretf/nocheats/raw/master/plugin/nocheats.smx

## NoChat
wget -N -nv https://github.com/spiretf/nochat/raw/main/plugin/nochat.smx

## SdrConnect
wget -N -nv https://github.com/spiretf/sdrconnect/raw/main/plugin/sdrconnect.smx

## SetTeam
wget -N -nv https://github.com/spiretf/setteam/raw/master/plugin/setteam.smx

# proper-pregame
wget -N -nv https://github.com/AJagger/ProperPregame/raw/master/addons/sourcemod/plugins/properpregame.smx

# ExtendHumiliation

cp /ExtendHumiliation.smx .

chmod 0664 *.smx

printf "\nsm plugins unload properpregame\n" >> $HOME/tf/cfg/sourcemod/soap_live.cfg
printf "\nsm plugins load properpregame\n" >> $HOME/tf/cfg/sourcemod/soap_notlive.cfg

cd $HOME/tf

wget -N -nv https://github.com/l-Aad-l/updated-pause-plugin/releases/download/v1.4.2/updated-pause-plugin.zip
unzip -o -qq updated-pause-plugin.zip
rm updated-pause-plugin.zip

