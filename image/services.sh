#!/bin/bash
set -e
source /build/buildconfig
set -x

## Downloading and extracting Photon
groupadd photon && useradd -g photon photon -d /home/photon
mkdir /home/photon && chown photon:photon /home/photon
gosu photon curl http://photon.komoot.de/data/photon-${PHOTON_VERSION}.jar -o /home/photon/photon-${PHOTON_VERSION}.jar

## Activating Photon
mkdir /etc/service/photon
cp /build/runit/photon /etc/service/photon/run