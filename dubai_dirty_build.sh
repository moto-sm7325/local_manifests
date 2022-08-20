#!/bin/bash

# Original script by Nvertigo https://github.com/nvertigo/local_manifest

# if you want to build without using ccache, comment
# the next 4 lines
#export USE_CCACHE=1
#export CCACHE_DIR=~/mnt/.ccache
#export CCACHE_MAX_SIZE=150G
#export CCACHE_EXEC=$(which ccache)
#ccache -M $CCACHE_MAX_SIZE

# we want all compiler messages in English
export LANGUAGE=C

# set up the environment (variables and functions)
source build/envsetup.sh

# clean the out dir; comment out, if you want to do
# a dirty build
# make -j9 ARCH=arm clean
make installclean

# fire up the building process and also log stdout
# and stderrout
brunch lineage_dubai-userdebug 2>&1 | tee dubai_make.log
