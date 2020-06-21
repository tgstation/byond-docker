#!/bin/bash

wget https://secure.byond.com/download/version.txt

export BYOND_VERSION=$(cat version.txt | awk '{$1=$1};1')
export BYOND_MAJOR="$(cut -d'.' -f1 <<< $BYOND_VERSION)"
export BYOND_MINOR="$(cut -d'.' -f2 <<< $BYOND_VERSION)"
