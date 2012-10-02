#!/bin/bash

# Create and enter the hsenv.
hsenv
source .hsenv_protocol-buffers/bin/activate

# hsenv wants to append _haskell to the dist build directory;
# "dist_haskell" isn't ever in .gitignore, so submodules get dirty quickly.
# Remove the silly _haskell suffix with this sed line.
sed -i -e 's/dist_haskell/dist/' .hsenv_protocol-buffers/bin/cabal

echo "*****************"
echo "*****************"
echo "*****************"
echo "Done! Now ./build.sh"
