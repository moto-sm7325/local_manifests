# Lineage buildscripts
========================

Please note, I use ~/android/lineage-20 in this README but you can use whatever folder name you want.

First I recommend checking the official LineageOS wiki instructions for building for xpeng here to see what are the dependencies and how to install them
https://wiki.lineageos.org/devices/dubai/build

Also please note that repopick.sh isn't always updated. Please check LineageOS Gerrit in case there is changes to repopick topics.

Starting from zero:
---------
    mkdir -p ~/android/lineage-20
    cd ~/android/lineage-20
    repo init -u git://github.com/LineageOS/android.git -b lineage-20
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/motorola.xml > .repo/local_manifests/motorola.xml
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    repo sync

If you've already synced Lineage-Sources:
----------
    mkdir -p .repo/local_manifests
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/motorola.xml > .repo/local_manifests/motorola.xml
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/gitlab.xml > .repo/local_manifests/gitlab.xml
    repo sync

Building
----------
    cd ~/android/lineage-20
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/xpeng_clean_build.sh > xpeng_clean_build.sh
    curl https://raw.githubusercontent.com/moto-sm7325/local_manifests/xpeng/lineage-20/xpeng_dirty_build.sh > xpeng_dirty_build.sh
    ./xpeng_clean_build.sh // for xpeng clean builds
    ./xpeng_dirty_build.sh // for xpeng dirty builds

I made these modified scripts for convenience plus logs terminal output to files for easy scrolling later in your favorite text editor.
