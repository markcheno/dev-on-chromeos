#!/bin/bash

DIR="$( cd "$( dirname $(readlink -f "${BASH_SOURCE[0]}") )" && pwd )"

export DEBIAN_FRONTEND=noninteractive

for SETUP_SCRIPT in ls $DIR/root/??-*; do
  sudo $SETUP_SCRIPT
done

[ -d ~/bin ] || mkdir ~/bin

for SETUP_SCRIPT in ls $DIR/user/??-*; do
  $SETUP_SCRIPT
done

mkdir -p $HOME/projects
mkdir -p $HOME/temp

echo "Logout and log back in to synchronize all the bits and bytes."
