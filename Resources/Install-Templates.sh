#!/bin/sh

#  Install-Templates.sh
#  TestPilot
#
#  Created by Jon Crooke on 08/02/2013.
#  Copyright (c) 2013 joncrooke. All rights reserved.

TEMPLATES=Templates
DESTINATION="$HOME/Library/Developer/Xcode/Templates/File Templates/Test Pilot"

if [ ! -d "$TEMPLATES" ]; then
  echo "Please run from Resources directory."
  exit 1
fi

echo "Installing templates to $DESTINATION..."
mkdir -p "$DESTINATION"
rsync -a "$TEMPLATES/" "$DESTINATION/"
echo "Done."
