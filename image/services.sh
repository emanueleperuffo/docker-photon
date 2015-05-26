#!/bin/bash
set -e
source /build/buildconfig
set -x

## Downloading and extracting Photon
groupadd photon && useradd -g photon photon
mkdir /var/db/photon && chown photon:photon /var/db/photon
mkdir /usr/local/share/photon
curl http://photon.komoot.de/data/photon-0.2.2.jar -o /usr/local/share/photon/photon.jar

## Activating Photon
mkdir /etc/service/photon
cp /build/runit/photon /etc/service/photon/run