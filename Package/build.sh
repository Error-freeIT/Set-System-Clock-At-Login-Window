#!/bin/bash

# Name of the package.
NAME="setsystemclockatloginwindow"

# Once installed the identifier is used as the filename for a receipt files in /var/db/receipts/.
IDENTIFIER="au.com.errorfreeit.$NAME"

# Package version number.
VERSION="1.1"

# The location to copy the contents of files.
INSTALL_LOCATION="/Library"


# Build package
/usr/bin/pkgbuild \
    --root files/ \
    --install-location "$INSTALL_LOCATION" \
    --scripts scripts/ \
    --identifier "$IDENTIFIER" \
    --version "$VERSION" \
    "compiled/$NAME-$VERSION.pkg"