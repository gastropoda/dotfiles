#!/bin/sh

if [ ! -f ~/.bundle/config ] ; then
  echo "Generating default bundle config"
  mkdir -p ~/.bundle
  cat <<EOF > ~/.bundle/config
---
BUNDLE_PATH: vendor/bundle
EOF
fi
