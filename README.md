# CodeCraftOS

A custom Debian system based on live-build.
This project does not provide a Debian live ISO, but it can build a ISO.

## Preinstallation

Install *live-build* in debian

    sudo apt install live-build

## Configuration

Clone the project with

    git clone https://github.com/OctHe/CodeCraftOS

Config it with

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

Generate the ISO requires root permission

    sudo lb build

The output is a \*.iso file named as *live-image-amd64.hybrid.iso* in the current directory.


## Rebuild

Remove all files, or rebuild the project will fail

    sudo lb clean
    sudo rm -rf cache

