#!/bin/bash

# Check for and request root privleges
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root to install packages" 1>&2
    exec sudo "$0" "$@"
fi

# Install required packages for the desktop
source Scripts/install_desktop_packages.sh

# Install extra packages
source Scripts/install_extras.sh

# Create symlinks for configs
source Scripts/create_symlinks.sh