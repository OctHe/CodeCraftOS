# Codecraft

A personal Debian distribution based on live-build.
This README illustrate the build process to customize a Debian ISO based on Debian Trixie.

## Preinstallation

Install *live-build* in debian

    sudo apt install live-build

## Configuration

Create the project

    mkdir codecraft
    cd codecraft

Config the project

    lb config \
        --distribution trixie \
        --parent-mirror-bootstrap "${MIRROR}" \
        --parent-mirror-debian-installer "${MIRROR}" \
        --parent-mirror-chroot "${MIRROR}" \
        --parent-mirror-chroot-security "${SECURITY_MIRROR}" \
        --parent-mirror-binary "${MIRROR}" \
        --parent-mirror-binary-security "${SECURITY_MIRROR}" \
        --mirror-bootstrap "${MIRROR}" \
        --mirror-debian-installer "${MIRROR}" \
        --mirror-chroot "${MIRROR}" \
        --mirror-chroot-security "${SECURITY_MIRROR}" \
        --mirror-binary "${MIRROR}" \
        --mirror-binary-security "${SECURITY_MIRROR}" \
        --architectures amd64 \
        --archive-areas "main contrib non-free non-free-firmware" \

Note that the *MIRROR* and *SECURITY_MIRROR* are two variables in bash that indicate the ULR of the mirror.
Use the aliyun mirror as the example:

    MIRROR=http://mirrors.aliyun.com/debian/
    SECURITY_MIRROR=http://mirrors.aliyun.com/debian-security/

## Build

    sudo lb build
    lb clean
    # Remove all files, or rebuild the project will fail
    sudo rm -rf cache
    sudo rm -rf config/*
